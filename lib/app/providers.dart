import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:github_vjchoir_archives_api/github_vjchoir_archives_api.dart';
import 'package:local_vjchoir_archives_api/local_vjchoir_archives_api.dart';
import 'package:vjchoir_archives/features/storage/storage.dart';
import 'package:vjchoir_archives_repository/vjchoir_archives_repository.dart';

final vjchoirArchivesRepositoryProvider =
    Provider<VjchoirArchivesRepository>((ref) {
  return VjchoirArchivesRepository(
    remote: GithubVjchoirArchivesApi(),
    local: LocalVjchoirArchivesApi(ref.watch(sharedPreferencesProvider)),
  );
});
