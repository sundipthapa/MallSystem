

import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:mallsystem/screens/main_screen.dart';
import 'firebase_options.dart';
import 'controller/auth_controller.dart';
import 'controller/location_controller.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();

  // Initialize Firebase with error handling
  try {
    // await Firebase.initializeApp();
    await Firebase.initializeApp(
        options: DefaultFirebaseOptions.currentPlatform // Add thiis.
        );
  } catch (e) {
    print('Error initializing Firebase: $e');
    // Optionally, you can handle this error, such as showing an error message or redirecting to an error screen.
  }

  // Put your controllers in the dependency injection after successful Firebase initialization
  Get.put(LocationController());
  Get.put(AuthController());

  // Get.lazyPut<LocationController>(() => LocationController());
  // Get.lazyPut<AuthController>(() => AuthController());

  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      title: 'Mall Navigation System',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const MainScreen(),
    );
  }
}
