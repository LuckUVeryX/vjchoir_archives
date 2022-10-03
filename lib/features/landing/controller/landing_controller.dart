import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:vjchoir_archives/features/storage/storage.dart';

final landingControllerProvider =
    StateNotifierProvider<LandingController, bool>((ref) {
  return LandingController(prefRepo: ref.watch(preferencesRepositoryProvider));
});

class LandingController extends StateNotifier<bool> {
  LandingController({
    required PreferencesRepository prefRepo,
  })  : _prefRepo = prefRepo,
        super(prefRepo.kShowLanding);

  final PreferencesRepository _prefRepo;

  void landingIntroComplete() {
    _prefRepo.kShowLanding = false;
    state = false;
  }
}
