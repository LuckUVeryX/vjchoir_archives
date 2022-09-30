import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:vjchoir_archives/features/home/services/services.dart';

final featuredPhotosControllerProvider =
    StateNotifierProvider<FeaturedPhotosController, AsyncValue<List<String>>>(
        (ref) {
  return FeaturedPhotosController(ref.watch(featuredPhotosServiceProvider))
    ..init();
});

class FeaturedPhotosController extends StateNotifier<AsyncValue<List<String>>> {
  FeaturedPhotosController(
    this._service,
  ) : super(const AsyncLoading());

  final FeaturedPhotosService _service;

  Future<void> init() async {
    state = await AsyncValue.guard(() => _service.featuredPhotos);
  }
}
