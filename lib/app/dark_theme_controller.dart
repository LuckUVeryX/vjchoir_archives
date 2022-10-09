import 'package:flutter/foundation.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:shake/shake.dart';
import 'package:vjchoir_archives/features/storage/storage.dart';

final darkThemeProvider =
    StateNotifierProvider<DarkThemeController, bool>((ref) {
  return DarkThemeController(ref.watch(preferencesRepositoryProvider)).._init();
});

class DarkThemeController extends StateNotifier<bool> {
  DarkThemeController(
    this._repo,
  ) : super(_repo.kDarkMode);

  final PreferencesRepository _repo;
  late final ShakeDetector _detector;

  void _init() {
    _detector =
        ShakeDetector.autoStart(onPhoneShake: toggle, minimumShakeCount: 3);
  }

  @visibleForTesting
  void toggle() {
    state = !state;
    _repo.kDarkMode = state;
  }

  @override
  void dispose() {
    _detector.stopListening();
    super.dispose();
  }
}
