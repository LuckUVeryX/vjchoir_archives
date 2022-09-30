// Copyright (c) 2022, Very Good Ventures
// https://verygood.ventures
//
// Use of this source code is governed by an MIT-style
// license that can be found in the LICENSE file or at
// https://opensource.org/licenses/MIT.

import 'package:vjchoir_archives_api/vjchoir_archives_api.dart';

/// {@template vjchoir_archives_repository}
/// Vjchoir Archives Repository
/// {@endtemplate}
class VjchoirArchivesRepository {
  /// {@macro vjchoir_archives_repository}
  const VjchoirArchivesRepository(
    this._api,
  );

  final VjchoirArchivesApi _api;

  /// Returns info about vjchoir [Batches].
  Future<Batches> getBatches() => _api.getBatches();

  /// Returns info about [SymphonyOfVoices].
  Future<SymphonyOfVoices> getSymphonyOfVoices() => _api.getSymphonyOfVoices();
}
