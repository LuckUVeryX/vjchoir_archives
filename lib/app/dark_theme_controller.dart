// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:shake/shake.dart';
import 'package:vjchoir_archives/features/storage/storage.dart';

final darkThemeProvider =
    StateNotifierProvider<DarkThemeController, bool>((ref) {
  return DarkThemeController(ref.watch(preferencesRepositoryProvider));
});

class DarkThemeController extends StateNotifier<bool> {
  DarkThemeController(
    this._repo,
  ) : super(_repo.kDarkMode) {
    _detector = ShakeDetector.autoStart(onPhoneShake: toggle);
  }

  final PreferencesRepository _repo;
  late final ShakeDetector _detector;

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
