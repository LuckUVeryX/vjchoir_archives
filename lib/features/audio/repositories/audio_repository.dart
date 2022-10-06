import 'dart:async';
import 'dart:developer';

import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:just_audio/just_audio.dart';
import 'package:rxdart/rxdart.dart';
import 'package:vjchoir_archives/features/audio/models/models.dart';
export 'package:just_audio/just_audio.dart' show PlayerException;

final audioRepositoryProvider = Provider<AudioRepository>((ref) {
  return AudioRepository(AudioPlayer());
});

class AudioRepository {
  AudioRepository(this._player);

  final AudioPlayer _player;

  Stream<AudioPositionModel> get positionStream =>
      Rx.combineLatest3<Duration, Duration, Duration?, AudioPositionModel>(
        _player.positionStream,
        _player.bufferedPositionStream,
        _player.durationStream,
        (position, bufferedPosition, duration) => AudioPositionModel(
          position: position,
          bufferedPosition: bufferedPosition,
          duration: duration ?? Duration.zero,
        ),
      );

  Stream<void> get playbackEventStream => _player.playbackEventStream;

  Stream<AudioModel> get audioStream =>
      _player.playerStateStream.map(_mapPlayerStateToAudioModel);

  Stream<int?> get playListIndex => _player.currentIndexStream;

  Future<void> setPlaylist({
    required List<String> urls,
    int? initialIndex,
  }) async {
    final playlist = ConcatenatingAudioSource(
      children: urls.map((e) => AudioSource.uri(Uri.parse(e))).toList(),
    );
    try {
      await _player.setAudioSource(playlist, initialIndex: initialIndex);
    } on PlayerException catch (e) {
      // iOS/macOS: maps to NSError.code
      // Android: maps to ExoPlayerException.type
      // Web: maps to MediaError.code
      // Linux/Windows: maps to PlayerErrorCode.index
      log('Error code: ${e.code}');
      // iOS/macOS: maps to NSError.localizedDescription
      // Android: maps to ExoPlaybackException.getMessage()
      // Web/Linux: a generic message
      // Windows: MediaPlayerError.message
      log('Error message: ${e.message}');
    } on PlayerInterruptedException catch (e) {
      // This call was interrupted since another audio source was loaded or the
      // player was stopped or disposed before this audio source could complete
      // loading.
      log('Connection aborted: ${e.message}');
    } catch (e) {
      // Fallback for all other errors
      log('An error occured: $e');
    }
  }

  Future<void> play() => _player.play();
  Future<void> pause() => _player.pause();
  Future<void> stop() => _player.stop();
  Future<void> seek(Duration duration) => _player.seek(duration);
  Future<void> seekToNext() => _player.seekToNext();
  Future<void> seekToPrevious() => _player.seekToPrevious();
  Future<void> setVolume(double value) => _player.setVolume(value);

  void dispose() {
    _player.dispose();
  }

  AudioModel _mapPlayerStateToAudioModel(PlayerState state) {
    final isPlaying = state.playing;
    final processingState = state.processingState;

    if (processingState == ProcessingState.loading ||
        processingState == ProcessingState.buffering) {
      return const AudioModel.loading();
    }

    if (!isPlaying) {
      return const AudioModel.paused();
    } else if (processingState != ProcessingState.completed) {
      return const AudioModel.playing();
    } else {
      return const AudioModel.replay();
    }
  }
}
