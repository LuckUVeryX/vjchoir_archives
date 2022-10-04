import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';
import 'package:vjchoir_archives/features/batches/batches.dart';
import 'package:vjchoir_archives/features/landing/landing.dart';
import 'package:vjchoir_archives/features/root/root.dart';
import 'package:vjchoir_archives/features/symphony_of_voices/symphony_of_voices.dart';
import 'package:vjchoir_archives/features/symphony_of_voices/view/symphony_of_voices_subpage.dart';

export 'package:go_router/go_router.dart';

final routerProvider = Provider<GoRouter>((ref) {
  final router = RouterNotifier(ref);

  return GoRouter(
    initialLocation: Routes.sov,
    navigatorKey: _rootNavigatorKey,
    debugLogDiagnostics: true,
    refreshListenable: router,
    redirect: router._redirectLogic,
    routes: router._routes,
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
            builder: (context, state) => const BatchesPage(),
            routes: [
              GoRoute(
                path: Routes._batchId.param,
                builder: (context, state) =>
                    BatchSubpage(batchId: state.params[Routes._batchId]!),
                routes: [
                  GoRoute(
                    path: Routes._batchComm.param,
                    parentNavigatorKey: _rootNavigatorKey,
                    builder: (context, state) => const Scaffold(),
                  )
                ],
              ),
            ],
          ),
          GoRoute(
            path: Routes.sov,
            builder: (context, state) => const SymphonyOfVoicesPage(),
            routes: [
              GoRoute(
                path: Routes._symphonyOfVoicesId.param,
                parentNavigatorKey: _rootNavigatorKey,
                builder: (context, state) => SymphonyOfVoicesSubpage(
                  sovId: int.parse(state.params[Routes._symphonyOfVoicesId]!),
                ),
              ),
            ],
          ),
          GoRoute(
            path: Routes.listen,
            builder: (context, state) =>
                const Center(child: Text(Routes.listen)),
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
  static const _batchComm = 'comm';
  static const sov = '/sov';
  static const _symphonyOfVoicesId = 'sovId';
  static const listen = '/listen';
}

extension _RouteParamsX on String {
  String get param => ':${this}';
}
