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
import 'package:vjchoir_archives_api/vjchoir_archives_api.dart';

/// {@template vjchoir_archives_repository}
/// Vjchoir Archives Repository
/// {@endtemplate}
class VjchoirArchivesRepository {
  /// {@macro vjchoir_archives_repository}
  VjchoirArchivesRepository({
    required GithubVjchoirArchivesApi remote,
    required LocalVjchoirArchivesApi local,
  })  : _remote = remote,
        _local = local;

  final GithubVjchoirArchivesApi _remote;
  final LocalVjchoirArchivesApi _local;

  /// Cached Batches value.
  @visibleForTesting
  Batches? batches;

  /// Cached SymphonyOfVoices value.
  @visibleForTesting
  SymphonyOfVoices? symphonyOfVoices;

  /// Returns info about vjchoir [Batches].
  Future<Batches> getBatches() async {
    return batches ??= await _getApiBatches();
  }

  Future<Batches> _getApiBatches() async {
    try {
      return await _local.getBatches();
    } on BatchesRequestFailure {
      final res = await _remote.getBatches();
      unawaited(_local.saveBatches(res));
      return res;
    }
  }

  /// Returns info about [SymphonyOfVoices].
  Future<SymphonyOfVoices> getSymphonyOfVoices() async {
    return symphonyOfVoices ??= await _getApiSymphonyOfVoices();
  }

  Future<SymphonyOfVoices> _getApiSymphonyOfVoices() async {
    try {
      return await _local.getSymphonyOfVoices();
    } on SymphonyOfVoicesRequestFailure {
      final res = await _remote.getSymphonyOfVoices();
      unawaited(_local.saveSymphonyOfVoices(res));
      return res;
    }
  }
}
