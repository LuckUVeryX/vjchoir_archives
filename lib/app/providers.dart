import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:vjchoir_archives_repository/vjchoir_archives_repository.dart';

final vjchoirArchivesApiProvider = Provider<VjchoirArchivesApi>((ref) {
  throw UnimplementedError();
});

final vjchoirArchivesRepositoryProvider =
    Provider<VjchoirArchivesRepository>((ref) {
  return VjchoirArchivesRepository(ref.watch(vjchoirArchivesApiProvider));
});
