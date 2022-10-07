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
          ).thenAnswer((_) async => true);

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

    group('kDarkMode', () {
      group('getter', () {
        test('should call with the correct key', () {
          createSubject().kDarkMode;

          verify(() => pref.getBool(PreferencesRepository.kDarkModeKey))
              .called(1);
        });

        test('should return false when no preferences saved', () {
          when(() => pref.getBool(PreferencesRepository.kDarkModeKey))
              .thenReturn(null);

          expect(createSubject().kDarkMode, false);
        });

        test('should return correct value when preferences saved', () {
          when(() => pref.getBool(PreferencesRepository.kDarkModeKey))
              .thenReturn(true);

          expect(createSubject().kDarkMode, true);

          when(() => pref.getBool(PreferencesRepository.kDarkModeKey))
              .thenReturn(false);

          expect(createSubject().kDarkMode, false);
        });
      });

      group('setter', () {
        test('should call with the correct key', () {
          try {
            createSubject().kDarkMode = false;
          } catch (_) {}

          verify(
            () => pref.setBool(PreferencesRepository.kDarkModeKey, any()),
          ).called(1);
        });

        test('should update with the correct value', () {
          when(
            () => pref.setBool(PreferencesRepository.kDarkModeKey, any()),
          ).thenAnswer((_) async => true);

          createSubject().kDarkMode = false;
          verify(
            () => pref.setBool(PreferencesRepository.kDarkModeKey, false),
          ).called(1);

          createSubject().kDarkMode = true;
          verify(
            () => pref.setBool(PreferencesRepository.kDarkModeKey, true),
          ).called(1);
        });
      });
    });
    group('kAlbumPalette', () {
      group('getter', () {
        test('should call with the correct key', () {
          createSubject().kAlbumPalette;

          verify(
            () => pref.getStringList(PreferencesRepository.kAlbumPaletteKey),
          ).called(1);
        });

        test('should return empty list when no preferences saved', () {
          when(() => pref.getStringList(PreferencesRepository.kAlbumPaletteKey))
              .thenReturn(null);

          expect(createSubject().kAlbumPalette, <String>[]);
        });

        test('should return correct value when preferences saved', () {
          when(() => pref.getStringList(PreferencesRepository.kAlbumPaletteKey))
              .thenReturn(['1', '2', '3']);

          expect(createSubject().kAlbumPalette, ['1', '2', '3']);
        });
      });

      group('setter', () {
        test('should call with the correct key', () {
          try {
            createSubject().kAlbumPalette = ['1', '2', '3'];
          } catch (_) {}

          verify(
            () => pref.setStringList(
              PreferencesRepository.kAlbumPaletteKey,
              any(),
            ),
          ).called(1);
        });

        test('should update with the correct value', () {
          when(
            () => pref.setStringList(
              PreferencesRepository.kAlbumPaletteKey,
              any(),
            ),
          ).thenAnswer((_) async => true);

          createSubject().kAlbumPalette = ['1', '2', '3'];
          verify(
            () => pref.setStringList(
              PreferencesRepository.kAlbumPaletteKey,
              ['1', '2', '3'],
            ),
          ).called(1);
        });
      });
    });
  });
}
