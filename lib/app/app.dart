// Copyright (c) 2022, Very Good Ventures
// https://verygood.ventures
//
// Use of this source code is governed by an MIT-style
// license that can be found in the LICENSE file or at
// https://opensource.org/licenses/MIT.

import 'package:flutter/material.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:vjchoir_archives/app/dark_theme_controller.dart';
import 'package:vjchoir_archives/app/router.dart';
import 'package:vjchoir_archives/l10n/l10n.dart';

class App extends ConsumerWidget {
  const App({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final router = ref.watch(routerProvider);

    return MaterialApp.router(
      routeInformationParser: router.routeInformationParser,
      routerDelegate: router.routerDelegate,
      routeInformationProvider: router.routeInformationProvider,
      title: 'Vjchoir Archives',
      localizationsDelegates: const [
        AppLocalizations.delegate,
        GlobalMaterialLocalizations.delegate,
      ],
      supportedLocales: AppLocalizations.supportedLocales,
      theme: ThemeData.from(
        useMaterial3: true,
        colorScheme: const ColorScheme(
          brightness: Brightness.light,
          primary: Color(0xFFA3375C),
          onPrimary: Color(0xFFFFFFFF),
          secondary: Color(0xFF79555D),
          onSecondary: Color(0xFFFFFFFF),
          error: Color(0xFFBA1A1A),
          onError: Color(0xFFFFFFFF),
          background: Color(0xFFFFFBFF),
          onBackground: Color(0xFF201A1B),
          surface: Color(0xFFFFFBFF),
          onSurface: Color(0xFF201A1B),
          errorContainer: Color(0xFFFFDAD6),
          onErrorContainer: Color(0xFF410002),
          primaryContainer: Color(0xFFFFD9E1),
          onPrimaryContainer: Color(0xFF3F001A),
          secondaryContainer: Color(0xFFFFD9E1),
          onSecondaryContainer: Color(0xFF2E131B),
          surfaceVariant: Color(0xFFF3DDE1),
          onSurfaceVariant: Color(0xFF514346),
          outline: Color(0xFF847376),
        ),
      ),
      darkTheme: ThemeData.from(
        useMaterial3: true,
        colorScheme: const ColorScheme(
          brightness: Brightness.dark,
          primary: Color(0xFFA3375C),
          onPrimary: Color(0xFFFFFFFF),
          secondary: Color(0xFF79555D),
          onSecondary: Color(0xFFFFFFFF),
          error: Color(0xFFBA1A1A),
          onError: Color(0xFFFFFFFF),
          background: Color(0xFFFFFBFF),
          onBackground: Color(0xFF201A1B),
          surface: Color(0xFFFFFBFF),
          onSurface: Color(0xFF201A1B),
          errorContainer: Color(0xFFFFDAD6),
          onErrorContainer: Color(0xFF410002),
          primaryContainer: Color(0xFFFFD9E1),
          onPrimaryContainer: Color(0xFF3F001A),
          secondaryContainer: Color(0xFFFFD9E1),
          onSecondaryContainer: Color(0xFF2E131B),
          surfaceVariant: Color(0xFFF3DDE1),
          onSurfaceVariant: Color(0xFF514346),
          outline: Color(0xFF847376),
        ),
      ),
      themeMode:
          ref.watch(darkThemeProvider) ? ThemeMode.dark : ThemeMode.light,
    );
  }
}
