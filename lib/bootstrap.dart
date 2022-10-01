// Copyright (c) 2022, Very Good Ventures
// https://verygood.ventures
//
// Use of this source code is governed by an MIT-style
// license that can be found in the LICENSE file or at
// https://opensource.org/licenses/MIT.

import 'dart:async';
import 'dart:developer';

import 'package:flutter/widgets.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:github_vjchoir_archives_api/github_vjchoir_archives_api.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:vjchoir_archives/app/providers.dart';
import 'package:vjchoir_archives/storage/storage.dart';

class AppProviderObserver extends ProviderObserver {
  @override
  void didUpdateProvider(
    ProviderBase<dynamic> provider,
    Object? previousValue,
    Object? newValue,
    ProviderContainer container,
  ) {
    log('''
{
  "provider": "${provider.name ?? provider.runtimeType}",
  "newValue": "$newValue"
}''');
  }
}

Future<void> bootstrap(FutureOr<Widget> Function() builder) async {
  FlutterError.onError = (details) {
    log(details.exceptionAsString(), stackTrace: details.stack);
  };

  WidgetsFlutterBinding.ensureInitialized();
  final pref = await SharedPreferences.getInstance();

  await runZonedGuarded(
    () async => runApp(
      ProviderScope(
        observers: [AppProviderObserver()],
        overrides: [
          vjchoirArchivesApiProvider
              .overrideWithValue(GithubVjchoirArchivesApi()),
          prefrencesRepositoryProvider
              .overrideWithValue(PreferencesRepository(pref)),
        ],
        child: await builder(),
      ),
    ),
    (error, stackTrace) => log(error.toString(), stackTrace: stackTrace),
  );
}
