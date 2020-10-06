import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:shopping_cart/core/dependency_injector/injector.dart';

import 'app.dart';

void main() async {
  /// Always call this if the main method is asynchronous
  WidgetsFlutterBinding.ensureInitialized();

  ///configure dependency injections
  configureDependencies();

  ///To initialize FlutterFire, call the initializeApp method on the Firebase class
  await Firebase.initializeApp();

  runApp(
    App(),
  );
}
