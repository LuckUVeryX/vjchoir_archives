// Copyright (c) 2022, Very Good Ventures
// https://verygood.ventures
//
// Use of this source code is governed by an MIT-style
// license that can be found in the LICENSE file or at
// https://opensource.org/licenses/MIT.

// ignore_for_file: prefer_const_constructors
import 'package:test/test.dart';
import 'package:vjchoir_archives_api/vjchoir_archives_api.dart';

class TestVjchoirArchivesApi extends VjchoirArchivesApi {
  @override
  dynamic noSuchMethod(Invocation invocation) {
    return super.noSuchMethod(invocation);
  }
}

void main() {
  group('VjchoirArchivesApi', () {
    test('can be constructed', () {
      expect(TestVjchoirArchivesApi.new, returnsNormally);
    });
  });
}
