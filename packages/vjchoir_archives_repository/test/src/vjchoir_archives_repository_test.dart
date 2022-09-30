// Copyright (c) 2022, Very Good Ventures
// https://verygood.ventures
//
// Use of this source code is governed by an MIT-style
// license that can be found in the LICENSE file or at
// https://opensource.org/licenses/MIT.

// ignore_for_file: prefer_const_constructors
import 'package:mocktail/mocktail.dart';
import 'package:test/test.dart';
import 'package:vjchoir_archives_api/vjchoir_archives_api.dart';
import 'package:vjchoir_archives_repository/src/vjchoir_archives_repository.dart';

import '../json/batches.dart';
import '../json/sov.dart';

class MockVjchoirArchivesApi extends Mock implements VjchoirArchivesApi {}

class FakeBatches extends Fake implements Batches {}

class FakeSymphonyOfVoices extends Fake implements SymphonyOfVoices {}

void main() {
  group('VjchoirArchivesRepository', () {
    late VjchoirArchivesApi api;

    final testBatches = Batches.fromJson(batchesJson);
    final testSov = SymphonyOfVoices.fromJson(sovJson);

    VjchoirArchivesRepository createSubject() => VjchoirArchivesRepository(api);

    setUpAll(
      () {
        registerFallbackValue(FakeBatches());
        registerFallbackValue(FakeSymphonyOfVoices());
      },
    );

    setUp(
      () {
        api = MockVjchoirArchivesApi();
        when(() => api.getBatches()).thenAnswer((_) async => testBatches);
        when(() => api.getSymphonyOfVoices()).thenAnswer((_) async => testSov);
      },
    );

    group('constructor', () {
      test('works correctly', () {
        expect(createSubject, returnsNormally);
      });
    });

    group('getBatches', () {
      test('makes correct request', () async {
        final subject = createSubject();

        await subject.getBatches();

        verify(() => api.getBatches()).called(1);
      });
    });

    group('getSymphonyOfVocies', () {
      test('makes correct request', () async {
        final subject = createSubject();

        await subject.getSymphonyOfVoices();

        verify(() => api.getSymphonyOfVoices()).called(1);
      });
    });
  });
}
