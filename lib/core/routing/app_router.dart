import 'package:flutter/material.dart';
import 'package:omar_advanced_course/core/routing/routes.dart';
import 'package:omar_advanced_course/features/login/ui/login_screen.dart';
import 'package:omar_advanced_course/features/onboarding/ui/onboarding_screen.dart';

class AppRouter {
  Route generateRoute(RouteSettings settings) {
    // this arguments to be passed in any screen like this (arguments as className)
    final arguments = settings.arguments;

    switch (settings.name) {
      case Routes.onBoardingScreen:
        return MaterialPageRoute(
          builder: (_) => const OnboardingScreen(),
        );
      case Routes.loginScreen:
        return MaterialPageRoute(
          builder: (_) => const LoginScreen(),
        );
      default:
        return MaterialPageRoute(
          builder: (_) => Scaffold(
            body: Center(
              child: Text('No rote defined for ${settings.name}'),
            ),
          ),
        );
    }
  }
}
