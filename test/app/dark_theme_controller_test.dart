import 'package:flutter_test/flutter_test.dart';
import 'package:mocktail/mocktail.dart';
import 'package:vjchoir_archives/app/dark_theme_controller.dart';
import 'package:vjchoir_archives/features/storage/storage.dart';

class MockPreferencesRepository extends Mock implements PreferencesRepository {}

void main() {
  group('DarkThemeController', () {
    late PreferencesRepository repo;

    setUp(() {
      repo = MockPreferencesRepository();
      when(() => repo.kDarkMode).thenReturn(false);
    });

    DarkThemeController createSubject() {
      return DarkThemeController(repo);
    }

    group('constructor', () {
      test('returns normally', () {
        expect(createSubject, returnsNormally);
      });

      test('initialses with the correct state', () {
        when(() => repo.kDarkMode).thenReturn(false);
        expect(createSubject().debugState, false);

        when(() => repo.kDarkMode).thenReturn(true);
        expect(createSubject().debugState, true);
      });
    });

    group('toggle', () {
      test('updates state with the correct value', () {
        final subject = createSubject();
        expect(subject.debugState, false);

        subject.toggle();
        expect(subject.debugState, true);
      });

      test('updates preferences repository with the correct value', () {
        createSubject().toggle();

        verify(() => repo.kDarkMode = true).called(1);
      });
    });
  });
}
