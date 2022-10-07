// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:vjchoir_archives/features/storage/storage.dart';

final darkThemeProvider =
    StateNotifierProvider<DarkThemeController, bool>((ref) {
  return DarkThemeController(ref.watch(preferencesRepositoryProvider));
});

class DarkThemeController extends StateNotifier<bool> {
  DarkThemeController(
    this._repo,
  ) : super(_repo.kDarkMode);

  final PreferencesRepository _repo;

  void toggle() {
    state = !state;
    _repo.kDarkMode = state;
  }
}
