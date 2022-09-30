// Copyright (c) 2022, Very Good Ventures
// https://verygood.ventures
//
// Use of this source code is governed by an MIT-style
// license that can be found in the LICENSE file or at
// https://opensource.org/licenses/MIT.
import 'dart:convert';

import 'package:http/http.dart' as http;
import 'package:path/path.dart' as p;
import 'package:vjchoir_archives_api/vjchoir_archives_api.dart';

/// {@template github_vjchoir_archives_api}
/// Github Vjchoir Archives Api that wraps the [Vjchoir Github Repo](https://github.com/vjchoir/vjchoir.github.io)
/// {@endtemplate}
class GithubVjchoirArchivesApi extends VjchoirArchivesApi {
  /// {@macro github_vjchoir_archives_api}
  GithubVjchoirArchivesApi({http.Client? httpClient})
      : _httpClient = httpClient ?? http.Client();

  static const _baseUrl = 'raw.githubusercontent.com';
  static const _assetPath = 'vjchoir/vjchoir.github.io/master/assets/data';

  final http.Client _httpClient;

  @override
  Future<Batches> getBatches() async {
    final request = Uri.https(
      _baseUrl,
      '$_assetPath/batches.json',
    );

    final response = await _httpClient.get(request);

    if (response.statusCode != 200) throw BatchesRequestFailure();

    final batchesJson = jsonDecode(response.body) as Map<String, dynamic>;

    return _parseBatchesPath(Batches.fromJson(batchesJson));
  }

  /// Converts relative image paths to actual paths.
  Batches _parseBatchesPath(Batches batches) {
    final newBatches = <Batch>[];

    for (final batch in batches.batches) {
      final newComms = <Comm>[];

      for (final comm in batch.comms) {
        newComms.add(
          comm.copyWith(
            img: 'https://${p.normalize(
              '$_baseUrl/$_assetPath/${comm.img.replaceFirst('../', '')}',
            )}',
          ),
        );
      }

      List<String>? newPhotos;
      final photos = batch.photos;
      if (photos != null) {
        newPhotos = [];
        for (final photo in photos) {
          newPhotos.add(
            'https://${p.normalize(
              '$_baseUrl/$_assetPath/${photo.replaceFirst('../', '')}',
            )}',
          );
        }
      }

      newBatches.add(
        batch.copyWith(
          image: 'https://${p.normalize(
            '$_baseUrl/$_assetPath/${batch.image.replaceFirst('../', '')}',
          )}',
          comms: newComms,
          photos: newPhotos,
        ),
      );
    }

    return Batches(batches: newBatches);
  }

  @override
  Future<SymphonyOfVoices> getSymphonyOfVoices() async {
    final request = Uri.https(
      _baseUrl,
      '$_assetPath/sov.json',
    );
    final response = await _httpClient.get(request);

    if (response.statusCode != 200) throw SymphonyOfVoicesRequestFailure();

    final sovJson = jsonDecode(response.body) as Map<String, dynamic>;
    return _parseSovPath(SymphonyOfVoices.fromJson(sovJson));
  }

  SymphonyOfVoices _parseSovPath(SymphonyOfVoices symphonyOfVoices) {
    final newSov = <Sov>[];

    for (final sov in symphonyOfVoices.sov) {
      newSov.add(
        sov.copyWith(
          artwork: p.normalize(
            'https://$_baseUrl/$_assetPath/${sov.artwork.replaceFirst('../', '')}',
          ),
        ),
      );
    }

    return SymphonyOfVoices(sov: newSov);
  }
}
