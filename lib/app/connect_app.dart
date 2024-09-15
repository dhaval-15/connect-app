import 'package:connect_app/app/route/app_routes.dart';
import 'package:connect_app/app/theme/theme.dart';
import 'package:flutter/material.dart';

class ConnectApp extends StatefulWidget {
  const ConnectApp({super.key, required this.navigatorKey});

  final GlobalKey<NavigatorState> navigatorKey;

  @override
  State<ConnectApp> createState() => _ConnectAppState();
}

class _ConnectAppState extends State<ConnectApp> {
  late AppRoutes _appRoutes;

  @override
  void initState() {
    super.initState();
    _appRoutes = AppRoutes(navigatorKey: widget.navigatorKey);
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      debugShowCheckedModeBanner: false,
      themeMode: ThemeMode.light,
      theme: ConnectAppTheme.lightTheme,
      darkTheme: ConnectAppTheme.darkTheme,
      routerConfig: _appRoutes.routeConfiguration,
    );
  }
}
