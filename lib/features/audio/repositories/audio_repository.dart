import 'dart:async';

import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:just_audio/just_audio.dart';
import 'package:rxdart/rxdart.dart';
import 'package:vjchoir_archives/features/audio/models/models.dart';

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

  Stream<AudioModel> get audioStream =>
      _player.playerStateStream.map(_mapPlayerStateToAudioModel);

  Future<void> setUrl(String url) => _player.setUrl(url);

  Future<void> play() => _player.play();
  Future<void> pause() => _player.pause();
  Future<void> stop() => _player.stop();
  Future<void> seek(Duration duration) => _player.seek(duration);
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
