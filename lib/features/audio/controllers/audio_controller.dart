// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'dart:async';

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
    _repo.audioStream.listen(_parseAudioStream);
    _repo.positionStream.listen(_parsePositionStream);
  }

  final VjchoirArchivesRepository _archives;
  final AudioRepository _repo;

  late final StreamSubscription<AudioModel> _audioStreamSub;
  late final StreamSubscription<AudioPositionModel> _positionStreamSub;

  Future<void> init() async {
    final sov = await _archives.getSymphonyOfVoices();
    state = AsyncData(AudioState.initial());
  }

  Future<void> play({
    required String title,
    required String composer,
    required String artwork,
    required String url,
  }) async {
    state = state.whenData(
      (value) =>
          value.copyWith(title: title, composer: composer, artwork: artwork),
    );

    await _repo.setUrl(url);
    await _repo.play();
  }

  Future<void> resume() async {
    state.whenData(
      (value) async {
        await value.audioModel.whenOrNull(
          paused: _repo.play,
          replay: () async {
            await _repo.seek(Duration.zero);
            await _repo.play();
          },
        );
      },
    );
  }

  Future<void> pause() => _repo.pause();

  void _parseAudioStream(AudioModel audio) {
    state = state.whenData((value) => value.copyWith(audioModel: audio));
  }

  void _parsePositionStream(AudioPositionModel position) {
    state = state.whenData((value) => value.copyWith(audioPosition: position));
  }

  @override
  void dispose() {
    _audioStreamSub.cancel();
    _positionStreamSub.cancel();
    super.dispose();
  }
}
