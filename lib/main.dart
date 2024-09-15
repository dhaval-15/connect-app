import 'package:adaptive_layout/adaptive_layout.dart';
import 'package:connect_app/app/connect_app.dart';
import 'package:connect_app/bootstrap.dart';
import 'package:flutter/material.dart';

void main() {
  final GlobalKey<NavigatorState> navigatorKey = GlobalKey<NavigatorState>();
  bootstrap(
    () => AdaptiveLayout.fromView(
      child: ConnectApp(navigatorKey: navigatorKey),
    ),
  );
}
