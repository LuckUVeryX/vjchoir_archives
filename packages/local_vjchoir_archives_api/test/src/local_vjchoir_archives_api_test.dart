// Copyright (c) 2022, Very Good Ventures
// https://verygood.ventures
//
// Use of this source code is governed by an MIT-style
// license that can be found in the LICENSE file or at
// https://opensource.org/licenses/MIT.

import 'dart:convert';

import 'package:flutter_test/flutter_test.dart';
import 'package:local_vjchoir_archives_api/local_vjchoir_archives_api.dart';
import 'package:mocktail/mocktail.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:vjchoir_archives_api/vjchoir_archives_api.dart';

class MockSharedPreferences extends Mock implements SharedPreferences {}

void main() {
  group('LocalVjChoirArchivesApi', () {
    late SharedPreferences pref;

    setUp(() {
      pref = MockSharedPreferences();
    });

    LocalVjchoirArchivesApi createSubject() {
      return LocalVjchoirArchivesApi(pref);
    }

    final testBatches = Batches(
      batches: [
        Batch(
          id: 'id',
          name: 'name',
          image: 'image',
          desc: 'desc',
          comms: [
            Comm(name: 'name', img: 'img', members: ['members'])
          ],
          sections: [
            Section(name: 'name', members: ['members'])
          ],
        )
      ],
    );

    final testSov = SymphonyOfVoices(
      sov: [
        Sov(
          id: -1,
          title: 'title',
          abbr: 'abbr',
          info: const SovInfo(
            date: -1,
            venue: 'venue',
            theme: 'theme',
            noFirstHalf: -1,
            noSecondHalf: -1,
          ),
          intro: 'intro',
          artwork: 'artwork',
          repertoire: [
            Repertoire(
              name: 'name',
              composer: 'composer',
              duration: -1,
              mp3: 'mp3',
            )
          ],
          links: const SovLinks(),
        )
      ],
    );

    group('constructor', () {
      test('returns normally', () {
        expect(createSubject, returnsNormally);
      });
    });

    group('saveBatches', () {
      setUp(() {
        when(() => pref.setString(any(), any())).thenAnswer((_) async => true);
      });
      test('calls setString with the correct key', () {
        createSubject().saveBatches(Batches(batches: []));

        verify(() => pref.setString(LocalVjchoirArchivesApi.batchesKey, any()))
            .called(1);
      });

      test('calls setString with the correct value', () {
        createSubject().saveBatches(testBatches);

        verify(() => pref.setString(any(), jsonEncode(testBatches.toJson())))
            .called(1);
      });
    });

    group('getBatches', () {
      test('should call getString with the correct key', () async {
        try {
          await createSubject().getBatches();
        } catch (_) {}

        verify(() => pref.getString(LocalVjchoirArchivesApi.batchesKey))
            .called(1);
      });

      test('should return successfully when has a stored value', () async {
        when(() => pref.getString(any()))
            .thenReturn(jsonEncode(testBatches.toJson()));

        final res = await createSubject().getBatches();

        expect(res, testBatches);
      });

      test('should throw exception when has badly formatted value', () async {
        when(() => pref.getString(any())).thenReturn('bad format');

        try {
          await createSubject().getBatches();
        } catch (e) {
          expect(e, isA<BatchesRequestFailure>());
        }
      });
      test('should throw exception when has no value stored', () async {
        when(() => pref.getString(any())).thenReturn(null);

        try {
          await createSubject().getBatches();
        } catch (e) {
          expect(e, isA<BatchesRequestFailure>());
        }
      });
    });

    group('saveSymphonyOfVoices', () {
      setUp(() {
        when(() => pref.setString(any(), any())).thenAnswer((_) async => true);
      });
      test('calls setString with the correct key', () {
        createSubject().saveSymphonyOfVoices(SymphonyOfVoices(sov: []));

        verify(
          () => pref.setString(
            LocalVjchoirArchivesApi.symphonyOfVoicesKey,
            any(),
          ),
        ).called(1);
      });

      test('calls setString with the correct value', () {
        createSubject().saveSymphonyOfVoices(testSov);

        verify(() => pref.setString(any(), jsonEncode(testSov.toJson())))
            .called(1);
      });
    });

    group('getSymphonyOfVoices', () {
      test('should call getString with the correct key', () async {
        try {
          await createSubject().getSymphonyOfVoices();
        } catch (_) {}

        verify(
          () => pref.getString(LocalVjchoirArchivesApi.symphonyOfVoicesKey),
        ).called(1);
      });

      test('should return successfully when has a stored value', () async {
        when(() => pref.getString(any()))
            .thenReturn(jsonEncode(testSov.toJson()));

        final res = await createSubject().getSymphonyOfVoices();

        expect(res, testSov);
      });

      test('should throw exception when has badly formatted value', () async {
        when(() => pref.getString(any())).thenReturn('bad format');

        try {
          await createSubject().getSymphonyOfVoices();
        } catch (e) {
          expect(e, isA<SymphonyOfVoicesRequestFailure>());
        }
      });
      test('should throw exception when has no value stored', () async {
        when(() => pref.getString(any())).thenReturn(null);

        try {
          await createSubject().getSymphonyOfVoices();
        } catch (e) {
          expect(e, isA<SymphonyOfVoicesRequestFailure>());
        }
      });
    });
  });
}
