import 'package:flutter/widgets.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';
import 'package:vjchoir_archives/features/landing/views/landing_page.dart';

final routerProvider = Provider<GoRouter>((ref) {
  final router = RouterNotifier();

  return GoRouter(
    debugLogDiagnostics: true,
    refreshListenable: router,
    redirect: router._redirectLogic,
    routes: router._routes,
  );
});

@visibleForTesting
class RouterNotifier extends ChangeNotifier {
  String? _redirectLogic(BuildContext context, GoRouterState state) {
    return null;
  }

  List<GoRoute> get _routes {
    return [
      GoRoute(
        path: Routes.landing,
        builder: (context, state) => const LandingPage(),
      ),
    ];
  }
}

abstract class Routes {
  static const landing = '/';
}
