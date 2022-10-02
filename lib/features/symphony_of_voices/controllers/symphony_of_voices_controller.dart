import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:vjchoir_archives/app/providers.dart';
import 'package:vjchoir_archives_repository/vjchoir_archives_repository.dart';

export 'package:vjchoir_archives_repository/vjchoir_archives_repository.dart'
    show Sov;

final symphonyOfVoicesControllerProvider = StateNotifierProvider<
    SymphonyOfVoicesController, AsyncValue<SymphonyOfVoices>>((ref) {
  return SymphonyOfVoicesController(
    ref.watch(vjchoirArchivesRepositoryProvider),
  )..init();
});

class SymphonyOfVoicesController
    extends StateNotifier<AsyncValue<SymphonyOfVoices>> {
  SymphonyOfVoicesController(
    this._repo,
  ) : super(const AsyncLoading());

  final VjchoirArchivesRepository _repo;

  Future<void> init() async {
    state = const AsyncLoading();
    state = await AsyncValue.guard(() async => _repo.getSymphonyOfVoices());
  }
}
