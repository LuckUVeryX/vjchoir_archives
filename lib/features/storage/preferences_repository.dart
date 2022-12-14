import 'package:flutter/foundation.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:shared_preferences/shared_preferences.dart';

final sharedPreferencesProvider = Provider<SharedPreferences>((ref) {
  throw UnimplementedError();
});

final preferencesRepositoryProvider = Provider<PreferencesRepository>((ref) {
  return PreferencesRepository(ref.watch(sharedPreferencesProvider));
});

class PreferencesRepository {
  PreferencesRepository(this._pref);

  final SharedPreferences _pref;

  @visibleForTesting
  static const kShowLandingKey = 'kShowLanding';
  bool get kShowLanding => _pref.getBool(kShowLandingKey) ?? true;
  set kShowLanding(bool value) => _pref.setBool(kShowLandingKey, value);

  @visibleForTesting
  static const kDarkModeKey = 'kDarkMode';
  bool get kDarkMode => _pref.getBool(kDarkModeKey) ?? false;
  set kDarkMode(bool value) => _pref.setBool(kDarkModeKey, value);

  @visibleForTesting
  static const kAlbumPaletteKey = 'kAlbumPaletteKey';
  List<String> get kAlbumPalette =>
      _pref.getStringList(kAlbumPaletteKey) ?? <String>[];
  set kAlbumPalette(List<String> value) =>
      _pref.setStringList(kAlbumPaletteKey, value);
}
