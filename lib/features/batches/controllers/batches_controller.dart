import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:vjchoir_archives/app/providers.dart';
import 'package:vjchoir_archives_repository/vjchoir_archives_repository.dart';

export 'package:vjchoir_archives_repository/vjchoir_archives_repository.dart'
    show Batch;

final batchesControllerProvider =
    StateNotifierProvider<BatchesController, AsyncValue<Batches>>((ref) {
  return BatchesController(ref.watch(vjchoirArchivesRepositoryProvider))
    ..init();
});

class BatchesController extends StateNotifier<AsyncValue<Batches>> {
  BatchesController(
    this._repo,
  ) : super(const AsyncLoading());

  final VjchoirArchivesRepository _repo;

  Future<void> init() async {
    state = const AsyncLoading();
    state = await AsyncValue.guard(() async => _repo.getBatches());
  }
}
