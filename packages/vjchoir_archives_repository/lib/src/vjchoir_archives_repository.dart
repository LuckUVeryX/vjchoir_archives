// Copyright (c) 2022, Very Good Ventures
// https://verygood.ventures
//
// Use of this source code is governed by an MIT-style
// license that can be found in the LICENSE file or at
// https://opensource.org/licenses/MIT.

import 'dart:async';

import 'package:flutter/foundation.dart';
import 'package:github_vjchoir_archives_api/github_vjchoir_archives_api.dart';
import 'package:local_vjchoir_archives_api/local_vjchoir_archives_api.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:vjchoir_archives_api/vjchoir_archives_api.dart';

/// {@template vjchoir_archives_repository}
/// Vjchoir Archives Repository
/// {@endtemplate}
class VjchoirArchivesRepository {
  /// {@macro vjchoir_archives_repository}
  VjchoirArchivesRepository({
    required GithubVjchoirArchivesApi remote,
    required LocalVjchoirArchivesApi local,
    required SharedPreferences pref,
  })  : _remote = remote,
        _local = local,
        _pref = pref,
        batchesCacheTimestamp = DateTime.fromMillisecondsSinceEpoch(
          pref.getInt(batchesCacheTimeStampKey) ?? 0,
        ),
        symphonyOfVoicesCacheTimestamp = DateTime.fromMillisecondsSinceEpoch(
          pref.getInt(symphonyOfVoicesCacheTimestampKey) ?? 0,
        );

  final GithubVjchoirArchivesApi _remote;
  final LocalVjchoirArchivesApi _local;
  final SharedPreferences _pref;

  /// Key to [SharedPreferences] value of [batchesCacheTimestamp].
  @visibleForTesting
  static const batchesCacheTimeStampKey = 'batchesCacheTimeStampKey';

  /// Key to [SharedPreferences] value of [symphonyOfVoicesCacheTimestamp].
  @visibleForTesting
  static const symphonyOfVoicesCacheTimestampKey =
      'symphonyOfVoicesCacheTimestampKey';

  /// Cached [Batches] value.
  @visibleForTesting
  Batches? batches;

  /// Cached [SymphonyOfVoices] value.
  @visibleForTesting
  SymphonyOfVoices? symphonyOfVoices;

  /// Timestamp when [Batches] was last cached.
  @visibleForTesting
  DateTime batchesCacheTimestamp;

  /// Timestamp when [SymphonyOfVoices] was last cached.
  @visibleForTesting
  DateTime symphonyOfVoicesCacheTimestamp;

  bool _cacheExpired(DateTime timestamp) {
    return DateTime.now().difference(timestamp) > const Duration(days: 7);
  }

  /// Returns info about vjchoir [Batches].
  Future<Batches> getBatches() async {
    return batches ??= await _getApiBatches();
  }

  Future<Batches> _getApiBatches() async {
    try {
      if (_cacheExpired(batchesCacheTimestamp)) {
        return await _getRemoteBatches();
      }

      return await _local.getBatches();
    } on BatchesRequestFailure {
      return _getRemoteBatches();
    }
  }

  Future<Batches> _getRemoteBatches() async {
    final res = await _remote.getBatches();
    batchesCacheTimestamp = DateTime.now();
    unawaited(_local.saveBatches(res));
    unawaited(_updateBatchesCacheTimestamp());
    return res;
  }

  Future<void> _updateBatchesCacheTimestamp() async {
    await _pref.setInt(
      batchesCacheTimeStampKey,
      batchesCacheTimestamp.millisecondsSinceEpoch,
    );
  }

  /// Returns info about [SymphonyOfVoices].
  Future<SymphonyOfVoices> getSymphonyOfVoices() async {
    return symphonyOfVoices ??= await _getApiSymphonyOfVoices();
  }

  Future<SymphonyOfVoices> _getApiSymphonyOfVoices() async {
    try {
      if (_cacheExpired(symphonyOfVoicesCacheTimestamp)) {
        return await _getRemoteSymphonyOfVoices();
      }

      return await _local.getSymphonyOfVoices();
    } on SymphonyOfVoicesRequestFailure {
      return _getRemoteSymphonyOfVoices();
    }
  }

  Future<SymphonyOfVoices> _getRemoteSymphonyOfVoices() async {
    final res = await _remote.getSymphonyOfVoices();
    symphonyOfVoicesCacheTimestamp = DateTime.now();
    unawaited(_local.saveSymphonyOfVoices(res));
    unawaited(_updateSymphonyOfVoicesCacheTimestamp());
    return res;
  }

  Future<void> _updateSymphonyOfVoicesCacheTimestamp() async {
    await _pref.setInt(
      symphonyOfVoicesCacheTimestampKey,
      symphonyOfVoicesCacheTimestamp.millisecondsSinceEpoch,
    );
  }
}
