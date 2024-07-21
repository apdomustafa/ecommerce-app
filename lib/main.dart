import 'package:ecommerce_app/core/utils/dependecy_injection/dependency_injection.dart';
import 'package:ecommerce_app/ecommere_app.dart';
import 'package:flutter/material.dart';
import 'package:firebase_core/firebase_core.dart';
import 'firebase_options.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();

  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );
  DependencyInjection.setup();
  runApp(const EcommerceApp());
}
