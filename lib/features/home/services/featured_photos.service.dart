import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:vjchoir_archives/app/providers.dart';
import 'package:vjchoir_archives_repository/vjchoir_archives_repository.dart';

export 'package:vjchoir_archives_repository/vjchoir_archives_repository.dart'
    show VjchoirArchivesApiException;

final featuredPhotosServiceProvider = Provider<FeaturedPhotosService>((ref) {
  return FeaturedPhotosService(ref.watch(vjchoirArchivesRepositoryProvider));
});

class FeaturedPhotosService {
  FeaturedPhotosService(this._repo);

  final VjchoirArchivesRepository _repo;

  Future<List<String>> get featuredPhotos async {
    final featuredPhotos = <String>[];

    final batches = await _repo.getBatches();

    for (final batch in batches.batches) {
      final photos = batch.photos;
      if (photos != null) {
        featuredPhotos.addAll(photos);
      }
    }

    featuredPhotos.shuffle();
    return featuredPhotos;
  }
}
