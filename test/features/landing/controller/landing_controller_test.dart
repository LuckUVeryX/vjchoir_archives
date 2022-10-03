import 'package:flutter_test/flutter_test.dart';
import 'package:mocktail/mocktail.dart';
import 'package:vjchoir_archives/features/landing/controller/landing_controller.dart';
import 'package:vjchoir_archives/features/storage/storage.dart';

class MockPreferencesRepository extends Mock implements PreferencesRepository {}

void main() {
  group('LandingController', () {
    late PreferencesRepository prefRepo;

    setUp(() {
      prefRepo = MockPreferencesRepository();
      when(() => prefRepo.kShowLanding).thenReturn(true);
    });
    LandingController createSubject() {
      return LandingController(prefRepo: prefRepo);
    }

    group('constructor', () {
      test('returns normally', () {
        expect(createSubject, returnsNormally);
      });
    });

    group('initial state', () {
      test('uses value from Preferences Repository', () {
        when(() => prefRepo.kShowLanding).thenReturn(false);
        expect(createSubject().debugState, false);

        when(() => prefRepo.kShowLanding).thenReturn(true);
        expect(createSubject().debugState, true);
      });
    });

    group('landingIntroComplete', () {
      test('updates state to false', () {
        final controller = createSubject()..landingIntroComplete();
        expect(controller.debugState, false);
      });

      test('calls kShowLanding setter in Preferences Repository', () {
        createSubject().landingIntroComplete();

        verify(() => prefRepo.kShowLanding = false).called(1);
      });
    });
  });
}
