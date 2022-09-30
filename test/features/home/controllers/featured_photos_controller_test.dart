import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mocktail/mocktail.dart';
import 'package:vjchoir_archives/features/home/controllers/controllers.dart';
import 'package:vjchoir_archives/features/home/services/services.dart';

class MockFeaturedPhotosService extends Mock implements FeaturedPhotosService {}

void main() {
  group('FeaturedPhotosController', () {
    late FeaturedPhotosService service;

    setUp(() => service = MockFeaturedPhotosService());

    FeaturedPhotosController createSubject() {
      return FeaturedPhotosController(service);
    }

    group('constructor', () {
      test('returns normally', () {
        expect(createSubject, returnsNormally);
      });

      test('initialises in the correct state', () {
        expect(createSubject().debugState, const AsyncLoading<List<String>>());
      });
    });

    group('init', () {
      test('should show error when service throws error', () async {
        final exception = VjchoirArchivesApiException();
        when(() => service.featuredPhotos).thenThrow(exception);

        final controller = createSubject();
        await controller.init();

        expect(
          controller.debugState,
          predicate<AsyncValue<List<String>>>(
            (value) {
              expect(value, isA<AsyncError<List<String>>>());
              return true;
            },
          ),
        );
      });
    });

    test('should return AsyncValue<List<String>> when succeed', () async {
      final testList = ['1', '2', '3'];
      when(() => service.featuredPhotos).thenAnswer((_) async => testList);

      final controller = createSubject();
      await controller.init();

      expect(controller.debugState, AsyncData(testList));
    });
  });
}
