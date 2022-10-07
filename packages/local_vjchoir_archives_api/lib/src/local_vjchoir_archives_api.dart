// Copyright (c) 2022, Very Good Ventures
// https://verygood.ventures
//
// Use of this source code is governed by an MIT-style
// license that can be found in the LICENSE file or at
// https://opensource.org/licenses/MIT.

import 'dart:convert';
import 'dart:developer';

import 'package:flutter/foundation.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:vjchoir_archives_api/vjchoir_archives_api.dart';

/// {@template local_vjchoir_archives_api}
/// Local Vjchoir Archives Api
/// {@endtemplate}
class LocalVjchoirArchivesApi extends VjchoirArchivesApi {
  /// {@macro local_vjchoir_archives_api}
  const LocalVjchoirArchivesApi(
    this._pref,
  );

  final SharedPreferences _pref;

  /// Key to Batches storage.
  @visibleForTesting
  static const batchesKey = 'batchesKey';

  /// Key to SymphonyOfVoices storage.
  @visibleForTesting
  static const symphonyOfVoicesKey = 'symphonyOfVoicesKey';

  /// Save batches to local storage.
  Future<void> saveBatches(Batches batches) async {
    await _pref.setString(batchesKey, jsonEncode(batches.toJson()));
  }

  @override
  Future<Batches> getBatches() async {
    try {
      final jsonString = _pref.getString(batchesKey);
      return Batches.fromJson(jsonDecode(jsonString!) as Map<String, dynamic>);
    } catch (e) {
      log('LocalVjchoirArchivesApi getBatches error: $e');
      throw BatchesRequestFailure();
    }
  }

  /// Save SymphonyOfVoices to local storage.
  Future<void> saveSymphonyOfVoices(SymphonyOfVoices sov) async {
    await _pref.setString(symphonyOfVoicesKey, jsonEncode(sov.toJson()));
  }

  @override
  Future<SymphonyOfVoices> getSymphonyOfVoices() async {
    try {
      final jsonString = _pref.getString(symphonyOfVoicesKey);
      return SymphonyOfVoices.fromJson(
        jsonDecode(jsonString!) as Map<String, dynamic>,
      );
    } catch (e) {
      log('LocalVjchoirArchivesApi getSymphonyOfVoices error: $e');
      throw SymphonyOfVoicesRequestFailure();
    }
  }
}
