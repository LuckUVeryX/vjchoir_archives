import 'package:flutter_test/flutter_test.dart';
import 'package:mocktail/mocktail.dart';
import 'package:vjchoir_archives/features/home/services/featured_photos.service.dart';
import 'package:vjchoir_archives_repository/vjchoir_archives_repository.dart';

class MockVjchoirArchivesRepository extends Mock
    implements VjchoirArchivesRepository {}

class FakeBatch extends Fake implements Batch {
  @override
  List<String>? get photos => ['FakePhoto'];
}

void main() {
  group('FeaturedPhotosService', () {
    late VjchoirArchivesRepository mockRepo;

    setUp(() {
      mockRepo = MockVjchoirArchivesRepository();
    });

    setUpAll(() {
      registerFallbackValue(FakeBatch());
    });

    FeaturedPhotosService createSubject({VjchoirArchivesRepository? repo}) {
      return FeaturedPhotosService(repo ?? mockRepo);
    }

    group('constructor', () {
      test('returns normally', () {
        expect(createSubject, returnsNormally);
      });
    });

    group('get featuredPhotos', () {
      test('should call VjchoirArchivesRepository get batches', () {
        when(() => mockRepo.getBatches())
            .thenAnswer((_) async => Batches(batches: []));

        createSubject().featuredPhotos;

        verify(() => mockRepo.getBatches()).called(1);
      });

      test('should return an empty list when no featured photos found',
          () async {
        when(() => mockRepo.getBatches())
            .thenAnswer((_) async => Batches(batches: []));

        final service = createSubject();
        final photos = await service.featuredPhotos;

        expect(photos.isEmpty, true);
      });
      test('should return a populated list when no featured photos found',
          () async {
        when(() => mockRepo.getBatches()).thenAnswer(
          (_) async => Batches(
            batches: [
              FakeBatch(),
              FakeBatch(),
              FakeBatch(),
            ],
          ),
        );

        final service = createSubject();
        final photos = await service.featuredPhotos;

        expect(photos.isNotEmpty, true);
      });
    });
  });
}
