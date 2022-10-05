import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:just_audio/just_audio.dart';

final audioRepositoryProvider = Provider<AudioRepository>((ref) {
  return AudioRepository(AudioPlayer());
});

class AudioRepository {
  AudioRepository(this._player);

  final AudioPlayer _player;

  Future<void> setUrl(String url) => _player.setUrl(url);

  Future<void> play() => _player.play();
  Future<void> pause() => _player.pause();
  Future<void> stop() => _player.stop();
  Future<void> seek(Duration duration) => _player.seek(duration);
  Future<void> setVolume(double value) => _player.setVolume(value);
}
