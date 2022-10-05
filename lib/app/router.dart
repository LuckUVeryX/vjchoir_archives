import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';
import 'package:vjchoir_archives/features/batches/batches.dart';
import 'package:vjchoir_archives/features/landing/landing.dart';
import 'package:vjchoir_archives/features/root/root.dart';
import 'package:vjchoir_archives/features/symphony_of_voices/symphony_of_voices.dart';

export 'package:go_router/go_router.dart';

// TODO(Ryan): Implement nested stateful navigation with ShellRoute.

final routerProvider = Provider<GoRouter>((ref) {
  final router = RouterNotifier(ref);

  return GoRouter(
    initialLocation: Routes.sov,
    navigatorKey: _rootNavigatorKey,
    debugLogDiagnostics: true,
    refreshListenable: router,
    redirect: router._redirectLogic,
    routes: router._routes,
    errorBuilder: (context, state) => _ErrorScreen(state.error),
  );
});

final GlobalKey<NavigatorState> _homeNavigatorKey =
    GlobalKey<NavigatorState>(debugLabel: 'shell');

final GlobalKey<NavigatorState> _rootNavigatorKey =
    GlobalKey<NavigatorState>(debugLabel: 'root');

class RouterNotifier extends ChangeNotifier {
  RouterNotifier(this._ref) {
    _ref.listen(landingControllerProvider, (_, __) => notifyListeners());
  }

  final Ref _ref;

  List<RouteBase> get _routes {
    return [
      GoRoute(
        path: Routes.landing,
        builder: (context, state) => const LandingPage(),
      ),
      ShellRoute(
        navigatorKey: _homeNavigatorKey,
        builder: (context, state, child) => RootPage(child: child),
        routes: [
          GoRoute(
            path: Routes.batches,
            pageBuilder: (context, state) =>
                const NoTransitionPage(child: BatchesPage()),
            routes: [
              GoRoute(
                path: Routes._batchId.param,
                builder: (context, state) =>
                    BatchSubpage(batchId: state.params[Routes._batchId]!),
                routes: [
                  GoRoute(
                    path: Routes._batchCommName.param,
                    builder: (context, state) => FullscreenImageWithCaption(
                      batchId: state.params[Routes._batchId]!,
                      commName: state.params[Routes._batchCommName]!,
                    ),
                  ),
                ],
              ),
            ],
          ),
          GoRoute(
            path: Routes.sov,
            pageBuilder: (context, state) =>
                const NoTransitionPage(child: SymphonyOfVoicesPage()),
            routes: [
              GoRoute(
                path: Routes._symphonyOfVoicesId.param,
                builder: (context, state) => SymphonyOfVoicesSubpage(
                  sovId: int.parse(state.params[Routes._symphonyOfVoicesId]!),
                ),
              ),
            ],
          ),
          GoRoute(
            path: Routes.listen,
            pageBuilder: (context, state) => const NoTransitionPage(
              child: Center(child: Text(Routes.listen)),
            ),
          ),
        ],
      ),
    ];
  }

  String? _redirectLogic(BuildContext context, GoRouterState state) {
    final showLanding = _ref.read(landingControllerProvider);

    if (!showLanding && state.subloc == Routes.landing) return Routes.sov;
    if (showLanding && state.subloc != Routes.landing) return Routes.landing;

    return null;
  }
}

abstract class Routes {
  static const landing = '/';

  static const batches = '/batches';
  static const _batchId = 'batchId';
  static const _batchCommName = 'commName';

  static const sov = '/sov';
  static const _symphonyOfVoicesId = 'sovId';

  static const listen = '/listen';
}

extension _RouteParamsX on String {
  String get param => ':${this}';
}

/// Default error page implementation for WidgetsApp.
class _ErrorScreen extends ConsumerWidget {
  /// Provide an exception to this page for it to be displayed.
  const _ErrorScreen(this.error);

  /// The exception to be displayed.
  final Exception? error;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Scaffold(
      appBar: AppBar(title: const Text('Page Not Found')),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            SelectableText(error?.toString() ?? 'page not found'),
            TextButton(
              onPressed: () {
                ref.read(rootControllerProvider.notifier).state =
                    RootPageTab.sov;
                context.go('/');
              },
              child: const Text('Home'),
            ),
          ],
        ),
      ),
    );
  }
}
