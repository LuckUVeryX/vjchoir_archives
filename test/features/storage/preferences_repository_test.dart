import 'package:flutter_test/flutter_test.dart';
import 'package:mocktail/mocktail.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:vjchoir_archives/features/storage/preferences_repository.dart';

class MockSharedPreferences extends Mock implements SharedPreferences {}

void main() {
  group('Preferences Repository', () {
    late SharedPreferences pref;

    setUp(() {
      pref = MockSharedPreferences();
    });

    PreferencesRepository createSubject() {
      return PreferencesRepository(pref);
    }

    group('constructor', () {
      test('returns normally', () {
        expect(createSubject, returnsNormally);
      });
    });

    group('kShowLanding', () {
      group('getter', () {
        test('should call with the correct key', () {
          createSubject().kShowLanding;

          verify(() => pref.getBool(PreferencesRepository.kShowLandingKey))
              .called(1);
        });

        test('should return true when no preferences saved', () {
          when(() => pref.getBool(PreferencesRepository.kShowLandingKey))
              .thenReturn(null);

          expect(createSubject().kShowLanding, true);
        });

        test('should return correct value when preferences saved', () {
          when(() => pref.getBool(PreferencesRepository.kShowLandingKey))
              .thenReturn(true);

          expect(createSubject().kShowLanding, true);

          when(() => pref.getBool(PreferencesRepository.kShowLandingKey))
              .thenReturn(false);

          expect(createSubject().kShowLanding, false);
        });
      });

      group('setter', () {
        test('should call with the correct key', () {
          try {
            createSubject().kShowLanding = false;
          } catch (_) {}

          verify(
            () => pref.setBool(PreferencesRepository.kShowLandingKey, any()),
          ).called(1);
        });

        test('should update with the correct value', () {
          when(
            () => pref.setBool(PreferencesRepository.kShowLandingKey, any()),
          ).thenAnswer((_) async => false);

          createSubject().kShowLanding = false;
          verify(
            () => pref.setBool(PreferencesRepository.kShowLandingKey, false),
          ).called(1);

          createSubject().kShowLanding = true;
          verify(
            () => pref.setBool(PreferencesRepository.kShowLandingKey, true),
          ).called(1);
        });
      });
    });
  });
}
