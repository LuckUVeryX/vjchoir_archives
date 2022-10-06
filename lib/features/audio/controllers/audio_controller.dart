import 'dart:async';

import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:vjchoir_archives/features/audio/models/models.dart';
import 'package:vjchoir_archives/features/audio/repositories/repositories.dart';

final audioControllerProvider =
    StateNotifierProvider<AudioController, AudioState>((ref) {
  return AudioController(ref.watch(audioRepositoryProvider));
});

class AudioController extends StateNotifier<AudioState> {
  AudioController(this._repo) : super(AudioState.initial()) {
    _repo.audioStream.listen(_parseAudioStream);
    _repo.positionStream.listen(_parsePositionStream);
  }

  final AudioRepository _repo;

  late final StreamSubscription<AudioModel> _audioStreamSub;
  late final StreamSubscription<AudioPositionModel> _positionStreamSub;

  Future<void> play({
    required String title,
    required String composer,
    required String artwork,
    required String url,
  }) async {
    state = state.copyWith(
      title: title,
      composer: composer,
      artwork: artwork,
    );
    await _repo.setUrl(url);
    await _repo.play();
  }

  Future<void> resume() => _repo.play();
  Future<void> pause() => _repo.pause();

  void _parseAudioStream(AudioModel audio) {
    audio.map<void>(
      loading: (value) => state = state.copyWith(isLoading: true),
      paused: (value) =>
          state = state.copyWith(isPlaying: false, isLoading: false),
      playing: (value) =>
          state = state.copyWith(isPlaying: true, isLoading: false),
    );
  }

  void _parsePositionStream(AudioPositionModel position) {
    state = state.copyWith(audioPosition: position);
  }

  @override
  void dispose() {
    _audioStreamSub.cancel();
    _positionStreamSub.cancel();
    super.dispose();
  }
}
