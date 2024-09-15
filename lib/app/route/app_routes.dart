import 'package:connect_app/ui/auth/widget/auth_layout.dart';
import 'package:connect_app/ui/demo.dart';
import 'package:connect_app/ui/ui.dart';
import 'package:flutter/cupertino.dart';
import 'package:go_router/go_router.dart';

class AppRoutes {
  AppRoutes({required this.navigatorKey});

  final GlobalKey<NavigatorState> navigatorKey;

  List<GoRoute> get authRoute => _authRoutes();

  GoRouter get routeConfiguration => _routeConfiguration();

  GoRouter _routeConfiguration() {
    final GoRouter route = GoRouter(
      initialLocation: "/login",
      navigatorKey: navigatorKey,
      routes: [...authRoute],
    );
    return route;
  }

  List<GoRoute> _authRoutes() {
    final List<GoRoute> authRoutes = [
      GoRoute(
        path: "/login",
        name: "login",
        builder: (context, state) =>   const AuthLayout(child: LoginView()),
      ),
      GoRoute(
        path: "/register",
        name: "register",
        builder: (context, state) => const AuthLayout(child: RegisterView()),
      ),
      GoRoute(
        path: "/demo",
        name: "demo",
        builder: (context, state) => const Demo(),
      ),
    ];

    return authRoutes;
  }
}
