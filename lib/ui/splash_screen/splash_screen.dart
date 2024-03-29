import 'package:animated_splash_screen/animated_splash_screen.dart';
import 'package:flutter/material.dart';
import 'package:gadgec_bloc/ui/login/screen_login.dart';

class SplashScreen extends StatelessWidget {
  const SplashScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return AnimatedSplashScreen(
      splash: "assets/images/logo.png",
      nextScreen: const ScreenLogin(),
      splashTransition: SplashTransition.rotationTransition,
    );
  }
}
