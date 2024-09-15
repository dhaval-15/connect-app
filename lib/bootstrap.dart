import 'dart:async';

import 'package:connect_app/firebase_options.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

typedef AsyncAppBuilder = FutureOr<Widget> Function();

Future<void> bootstrap(AsyncAppBuilder builder) async {
  return runZonedGuarded(
    () async {
      WidgetsFlutterBinding.ensureInitialized();
      await Firebase.initializeApp(options: DefaultFirebaseOptions.currentPlatform);
      _configureSystemUi();
      final app = await builder();
      runApp(app);
    },
    (error, stack) {
      debugPrint("error => $error");
      debugPrint("stack => $stack");
    },
  );
}

Future<void> _configureSystemUi() async {
  await SystemChrome.setEnabledSystemUIMode(SystemUiMode.edgeToEdge);
}
