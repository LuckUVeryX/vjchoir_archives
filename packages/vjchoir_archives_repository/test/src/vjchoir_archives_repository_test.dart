// Copyright (c) 2022, Very Good Ventures
// https://verygood.ventures
//
// Use of this source code is governed by an MIT-style
// license that can be found in the LICENSE file or at
// https://opensource.org/licenses/MIT.

import 'package:github_vjchoir_archives_api/github_vjchoir_archives_api.dart';
import 'package:local_vjchoir_archives_api/local_vjchoir_archives_api.dart';
import 'package:mocktail/mocktail.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:test/test.dart';
import 'package:vjchoir_archives_api/vjchoir_archives_api.dart';
import 'package:vjchoir_archives_repository/src/vjchoir_archives_repository.dart';

import '../json/batches.dart';
import '../json/sov.dart';

class MockGithubVjchoirArchivesApi extends Mock
    implements GithubVjchoirArchivesApi {}

class MockLocalVjchoirArchivesApi extends Mock
    implements LocalVjchoirArchivesApi {}

class MockSharedPreferences extends Mock implements SharedPreferences {}

class FakeBatches extends Fake implements Batches {}

class FakeSymphonyOfVoices extends Fake implements SymphonyOfVoices {}

void main() {
  group('VjchoirArchivesRepository', () {
    late GithubVjchoirArchivesApi remote;
    late LocalVjchoirArchivesApi local;
    late SharedPreferences pref;

    final testBatches = Batches.fromJson(batchesJson);
    final testSov = SymphonyOfVoices.fromJson(sovJson);

    setUpAll(
      () {
        registerFallbackValue(FakeBatches());
        registerFallbackValue(FakeSymphonyOfVoices());
      },
    );

    setUp(
      () {
        remote = MockGithubVjchoirArchivesApi();
        when(() => remote.getBatches()).thenAnswer((_) async => testBatches);
        when(() => remote.getSymphonyOfVoices())
            .thenAnswer((_) async => testSov);

        local = MockLocalVjchoirArchivesApi();
        when(() => local.getBatches()).thenAnswer((_) async => testBatches);
        when(() => local.getSymphonyOfVoices())
            .thenAnswer((_) async => testSov);

        pref = MockSharedPreferences();
        when(() => pref.setInt(any(), any()))
            .thenAnswer((invocation) async => true);

        when(() => pref.getInt(any()))
            .thenReturn(DateTime.now().millisecondsSinceEpoch);
      },
    );

    VjchoirArchivesRepository createSubject([
      DateTime? timestamp,
    ]) {
      final subject = VjchoirArchivesRepository(
        remote: remote,
        local: local,
        pref: pref,
      );
      if (timestamp != null) {
        subject
          ..batchesCacheTimestamp = timestamp
          ..symphonyOfVoicesCacheTimestamp = timestamp;
      }
      return subject;
    }

    group('constructor', () {
      test('works correctly', () {
        expect(createSubject, returnsNormally);
      });

      group('Initialises with the correct cache timestamps', () {
        test('when no prior timestamp was found', () {
          when(() => pref.getInt(any())).thenReturn(null);

          final subject = createSubject();

          expect(
            subject.batchesCacheTimestamp,
            DateTime.fromMillisecondsSinceEpoch(0),
          );
          expect(
            subject.symphonyOfVoicesCacheTimestamp,
            DateTime.fromMillisecondsSinceEpoch(0),
          );
        });

        test('when prior timestamp was found', () {
          when(() => pref.getInt(any())).thenReturn(9999);

          final subject = createSubject();

          expect(
            subject.batchesCacheTimestamp,
            DateTime.fromMillisecondsSinceEpoch(9999),
          );
          expect(
            subject.symphonyOfVoicesCacheTimestamp,
            DateTime.fromMillisecondsSinceEpoch(9999),
          );
        });
      });
    });

    group('getBatches', () {
      test('returns from cache if cache exists', () async {
        final subject = createSubject()..batches = testBatches;

        final res = await subject.getBatches();

        verifyNever(local.getBatches);
        verifyNever(remote.getBatches);

        expect(res, testBatches);
      });

      test('requests from local if cache doesnt exist', () async {
        final subject = createSubject();
        final res = await subject.getBatches();

        verify(local.getBatches).called(1);
        verifyNever(remote.getBatches);
        expect(res, testBatches);
      });

      test('requests from remote if cache is invalid', () async {
        try {
          final subject = createSubject(DateTime.fromMillisecondsSinceEpoch(0));
          await subject.getBatches();
        } catch (_) {}

        verifyNever(local.getBatches);
        verify(remote.getBatches).called(1);
        verify(() => local.saveBatches(any())).called(1);
      });

      test('''
request from remote if cache and local doesnt exist and saves remote value to local''',
          () async {
        when(() => local.getBatches()).thenAnswer((_) async {
          throw BatchesRequestFailure();
        });

        try {
          final subject = createSubject();
          await subject.getBatches();
        } catch (_) {}

        verify(() => local.getBatches()).called(1);
        verify(remote.getBatches).called(1);
        verify(() => local.saveBatches(any())).called(1);
      });

      test('returns correct result from remote', () async {
        when(local.getBatches).thenAnswer((_) async {
          throw BatchesRequestFailure();
        });
        when(() => local.saveBatches(any())).thenAnswer((invocation) async {});

        final subject = createSubject();
        final res = await subject.getBatches();

        expect(res, testBatches);
      });

      test('updates the cache timestamp after fetching from remote', () async {
        when(local.getBatches).thenAnswer((_) async {
          throw BatchesRequestFailure();
        });
        when(() => local.saveBatches(any())).thenAnswer((invocation) async {});

        final subject = createSubject();
        await subject.getBatches();

        verify(
          () => pref.setInt(
            VjchoirArchivesRepository.batchesCacheTimeStampKey,
            any(),
          ),
        ).called(1);
      });
    });

    group('getSymphonyOfVocies', () {
      test('returns from cache if cache exists', () async {
        final subject = createSubject()..symphonyOfVoices = testSov;

        final res = await subject.getSymphonyOfVoices();

        verifyNever(local.getSymphonyOfVoices);
        verifyNever(remote.getSymphonyOfVoices);

        expect(res, testSov);
      });

      test('requests from local if cache doesnt exist', () async {
        final subject = createSubject();
        final res = await subject.getSymphonyOfVoices();

        verify(local.getSymphonyOfVoices).called(1);
        verifyNever(remote.getSymphonyOfVoices);
        expect(res, testSov);
      });

      test('requests from remote if cache is invalid', () async {
        try {
          final subject = createSubject(DateTime.fromMillisecondsSinceEpoch(0));
          await subject.getSymphonyOfVoices();
        } catch (_) {}

        verifyNever(local.getSymphonyOfVoices);
        verify(remote.getSymphonyOfVoices).called(1);
        verify(() => local.saveSymphonyOfVoices(any())).called(1);
      });

      test('''
request from remote if cache and local doesnt exist and saves remote value to local''',
          () async {
        when(local.getSymphonyOfVoices).thenAnswer((_) async {
          throw SymphonyOfVoicesRequestFailure();
        });

        try {
          final subject = createSubject();
          await subject.getSymphonyOfVoices();
        } catch (_) {}

        verify(local.getSymphonyOfVoices).called(1);
        verify(() => local.saveSymphonyOfVoices(any())).called(1);
        verify(remote.getSymphonyOfVoices).called(1);
      });
    });

    test('returns correct result from remote', () async {
      when(local.getSymphonyOfVoices).thenAnswer((_) async {
        throw SymphonyOfVoicesRequestFailure();
      });
      when(() => local.saveSymphonyOfVoices(any()))
          .thenAnswer((invocation) async {});

      final subject = createSubject();
      final res = await subject.getSymphonyOfVoices();

      expect(res, testSov);
    });
  });
}
