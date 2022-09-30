// Copyright (c) 2022, Very Good Ventures
// https://verygood.ventures
//
// Use of this source code is governed by an MIT-style
// license that can be found in the LICENSE file or at
// https://opensource.org/licenses/MIT.

import 'package:vjchoir_archives_api/src/models/models.dart';

/// Exception thrown when getBatches fail.
class BatchesRequestFailure implements VjchoirArchivesApiException {}

/// Exception thrown when getSymphonyOfVoices fail.
class SymphonyOfVoicesRequestFailure implements VjchoirArchivesApiException {}

/// Custom API exception
class VjchoirArchivesApiException implements Exception {}

/// {@template vjchoir_archives_api}
/// Vjchoir Archives Api
/// {@endtemplate}
abstract class VjchoirArchivesApi {
  /// {@macro vjchoir_archives_api}
  const VjchoirArchivesApi();

  /// Returns info about vjchoir [Batches].
  Future<Batches> getBatches();

  /// Returns info about [SymphonyOfVoices].
  Future<SymphonyOfVoices> getSymphonyOfVoices();
}
