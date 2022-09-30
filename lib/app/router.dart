import 'package:flutter/widgets.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';
import 'package:vjchoir_archives/features/home/home.dart';
import 'package:vjchoir_archives/features/landing/landing.dart';

export 'package:go_router/go_router.dart';

final routerProvider = Provider<GoRouter>((ref) {
  final router = RouterNotifier();

  return GoRouter(
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
  List<RouteBase> get _routes {
    return [
      GoRoute(
        path: Routes.landing,
        builder: (context, state) => const LandingPage(),
      ),
      ShellRoute(
        navigatorKey: _homeNavigatorKey,
        builder: (context, state, child) => HomePage(child: child),
        routes: [
          GoRoute(
            path: Routes.home,
            builder: (context, state) => const Center(child: Text('Home')),
          ),
          GoRoute(
            path: Routes.batches,
            builder: (context, state) => const Center(child: Text('Batches')),
          ),
          GoRoute(
            path: Routes.symphonyOfVoices,
            builder: (context, state) =>
                const Center(child: Text('SymphonyOfVoices')),
          ),
        ],
      ),
    ];
  }

  String? _redirectLogic(BuildContext context, GoRouterState state) {
    return null;
  }
}

abstract class Routes {
  static const landing = '/';
  static const home = '/home';
  static const batches = '/batches';
  static const symphonyOfVoices = '/symphonyOfVoices';
}
