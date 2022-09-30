// Copyright (c) 2022, Very Good Ventures
// https://verygood.ventures
//
// Use of this source code is governed by an MIT-style
// license that can be found in the LICENSE file or at
// https://opensource.org/licenses/MIT.

import 'package:github_vjchoir_archives_api/github_vjchoir_archives_api.dart';
import 'package:http/http.dart' as http;
import 'package:mocktail/mocktail.dart';
// ignore_for_file: prefer_const_constructors
import 'package:test/test.dart';
import 'package:vjchoir_archives_api/vjchoir_archives_api.dart';

class MockHttpClient extends Mock implements http.Client {}

class MockResponse extends Mock implements http.Response {}

class FakeUri extends Fake implements Uri {}

void main() {
  group('GithubVjchoirArchivesApi', () {
    late http.Client httpClient;
    late GithubVjchoirArchivesApi apiClient;

    setUpAll(() {
      registerFallbackValue(FakeUri());
    });

    setUp(() {
      httpClient = MockHttpClient();
      apiClient = GithubVjchoirArchivesApi(httpClient: httpClient);
    });

    group('constructor', () {
      test('does not require an httpClient', () {
        expect(GithubVjchoirArchivesApi(), isNotNull);
      });
    });

    group('getBatches', () {
      test('makes the correct http request', () async {
        final response = MockResponse();
        when(() => response.statusCode).thenReturn(200);
        when(() => response.body).thenReturn('{}');
        when(() => httpClient.get(any())).thenAnswer((_) async => response);

        try {
          await apiClient.getBatches();
        } catch (_) {}

        verify(
          () => httpClient.get(
            Uri.https(
              'raw.githubusercontent.com',
              'vjchoir/vjchoir.github.io/master/assets/data/batches.json',
            ),
          ),
        ).called(1);
      });

      test('throws a BatchesRequestFailure on non-200 response', () {
        final response = MockResponse();
        when(() => response.statusCode).thenReturn(400);
        when(() => httpClient.get(any())).thenAnswer((_) async => response);

        expect(
          () async => apiClient.getBatches(),
          throwsA(isA<BatchesRequestFailure>()),
        );
      });
    });
    group('getSymphonyOfVoices', () {
      test('makes the correct http request', () async {
        final response = MockResponse();
        when(() => response.statusCode).thenReturn(200);
        when(() => response.body).thenReturn('{}');
        when(() => httpClient.get(any())).thenAnswer((_) async => response);

        try {
          await apiClient.getSymphonyOfVoices();
        } catch (_) {}

        verify(
          () => httpClient.get(
            Uri.https(
              'raw.githubusercontent.com',
              'vjchoir/vjchoir.github.io/master/assets/data/sov.json',
            ),
          ),
        ).called(1);
      });

      test('throws a SymphonyOfVoicesRequestFailure on non-200 response', () {
        final response = MockResponse();
        when(() => response.statusCode).thenReturn(400);
        when(() => httpClient.get(any())).thenAnswer((_) async => response);

        expect(
          () async => apiClient.getSymphonyOfVoices(),
          throwsA(isA<SymphonyOfVoicesRequestFailure>()),
        );
      });
    });
  });
}
