// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'dart:async';
import 'dart:developer';

import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:vjchoir_archives/app/providers.dart';
import 'package:vjchoir_archives/features/audio/models/models.dart';
import 'package:vjchoir_archives/features/audio/repositories/repositories.dart';
import 'package:vjchoir_archives_repository/vjchoir_archives_repository.dart';

final audioControllerProvider =
    StateNotifierProvider<AudioController, AsyncValue<AudioState>>((ref) {
  return AudioController(
    ref.watch(vjchoirArchivesRepositoryProvider),
    ref.watch(audioRepositoryProvider),
  )..init();
});

class AudioController extends StateNotifier<AsyncValue<AudioState>> {
  AudioController(
    this._archives,
    this._repo,
  ) : super(const AsyncLoading()) {
    _audioStreamSub = _repo.audioStream.listen(_parseAudioStream);
    _positionStreamSub = _repo.positionStream.listen(_parsePositionStream);
    _repo.playListIndex.listen(_parseIndexStream);
    _repo.playbackEventStream.listen(
      (event) {},
      onError: (Object e, StackTrace st) {
        state = AsyncError(e, st);
        if (e is PlayerException) {
          log('Error code: ${e.code}');
          log('Error message: ${e.message}');
        } else {
          log('An error occurred: $e');
        }
      },
    );
  }

  final VjchoirArchivesRepository _archives;
  final AudioRepository _repo;

  late final StreamSubscription<AudioModel> _audioStreamSub;
  late final StreamSubscription<AudioPositionModel> _positionStreamSub;
  late final StreamSubscription<int?> _playlistIndexSub;
  late final StreamSubscription<void> _errorStreamSub;

  Future<void> init() async {
    final sov = await _archives.getSymphonyOfVoices();
    state = AsyncData(AudioState.fromSov(sov.sov[0]));
    state.whenData((value) async {
      await _repo.setPlaylist(
        playlist: value.playlist,
      );
    });
  }

  Future<void> play({
    required Sov sov,
    int? index,
  }) async {
    state = state.whenData(
      (value) => value.copyWith(
        playlist: Playlist.fromSov(sov, index),
      ),
    );

    state.whenData((value) async {
      await _repo.setPlaylist(playlist: value.playlist);
      await _repo.play();
    });
  }

  Future<void> resume() async {
    state.whenData(
      (value) async {
        await value.audioModel.whenOrNull(
          paused: _repo.play,
          replay: () async {
            await _repo.setPlaylist(
              playlist: value.playlist.copyWith(index: 0),
            );
            await _repo.play();
          },
        );
      },
    );
  }

  Future<void> pause() => _repo.pause();
  Future<void> seekToNext() async {
    await _repo.seekToNext();
    await _playIfPaused();
  }

  Future<void> seekToPrevious() async {
    await _repo.seekToPrevious();
    await _playIfPaused();
  }

  Future<void> _playIfPaused() async {
    if (state.valueOrNull?.audioModel.whenOrNull(playing: () => false) ??
        true) {
      await _repo.play();
    }
  }

  void _parseAudioStream(AudioModel audio) {
    state = state.whenData((value) => value.copyWith(audioModel: audio));
  }

  void _parsePositionStream(AudioPositionModel position) {
    state = state.whenData((value) => value.copyWith(audioPosition: position));
  }

  void _parseIndexStream(int? index) {
    if (index == null) return;
    state = state.whenData(
      (value) =>
          value.copyWith(playlist: value.playlist.copyWith(index: index)),
    );
  }

  @override
  void dispose() {
    _audioStreamSub.cancel();
    _positionStreamSub.cancel();
    _playlistIndexSub.cancel();
    _errorStreamSub.cancel();
    _repo.dispose();
    super.dispose();
  }
}
