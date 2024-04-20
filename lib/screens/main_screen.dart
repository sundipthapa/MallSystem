import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:mallsystem/screens/signin_screen.dart';

import 'home_nav_screen.dart';

class MainScreen extends StatelessWidget {
  const MainScreen({super.key});

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
          child: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            SizedBox(
                width: size.width / 2.5,
                height: size.width / 2.5,
                child: Image.asset('assets/images/logo.png')),
            const SizedBox(
              height: 15,
            ),
            const Text("Shopping Mall",
                style: TextStyle(
                    fontSize: 35,
                    color: Colors.red,
                    fontWeight: FontWeight.bold)),
            const SizedBox(
              height: 15,
            ),
            const Text("Navigation System",
                style: TextStyle(
                  fontSize: 15,
                )),
            const SizedBox(
              height: 25,
            ),
            TextButton(
                style: ButtonStyle(
                    padding: WidgetStateProperty.all<EdgeInsetsGeometry>(
                        const EdgeInsets.all(15)),
                    foregroundColor:
                        WidgetStateProperty.all<Color>(Colors.white),
                    backgroundColor:
                        WidgetStateProperty.all<Color>(Colors.red),
                    shape: WidgetStateProperty.all<OutlinedBorder>(
                        const RoundedRectangleBorder(
                      borderRadius: BorderRadius.all(Radius.circular(15.0)),
                    ))),
                onPressed: () => {Get.to(() => const HomeNavigationScreen())},
                child: const Text(
                  "Continue",
                  style: TextStyle(fontSize: 20),
                )),
            const SizedBox(
              height: 5,
            ),
            TextButton(
                onPressed: () => {Get.to(() => const SignInScreen())},
                child: const Text(
                  "Sign In",
                  style: TextStyle(fontSize: 16),
                ))
          ],
        ),
      )),
    );
  }
}
