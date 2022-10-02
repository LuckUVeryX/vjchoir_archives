import 'package:flutter/foundation.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:shared_preferences/shared_preferences.dart';

final prefrencesRepositoryProvider = Provider<PreferencesRepository>((ref) {
  throw UnimplementedError();
});

class PreferencesRepository {
  PreferencesRepository(this._pref);

  final SharedPreferences _pref;

  @visibleForTesting
  static const kShowLandingKey = 'kShowLanding';
  bool get kShowLanding => _pref.getBool(kShowLandingKey) ?? true;
  set kShowLanding(bool value) => _pref.setBool(kShowLandingKey, value);
}
