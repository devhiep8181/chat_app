import 'package:chat_app/presentation/screens/call/call_screen.dart';
import 'package:chat_app/presentation/screens/empty/empty_screen.dart';
import 'package:chat_app/presentation/screens/screen.dart';
import 'package:chat_app/presentation/screens/setting/setting_screen.dart';
import 'package:chat_app/presentation/screens/splash/splash_screen.dart';
import 'package:chat_app/presentation/screens/status/status_srceen.dart';
import 'package:flutter/material.dart';

const String splashScreen = "/";
const String signInScreen = '/SignInScreen';
const String signUpScreen = '/SignUpScreen';
const String homeScreen = '/HomeScreen';
const String emptyScreen = '/EmptyScreen';
const String callScreen = "/CallScreen";
const String statusScreen = "/StatusScreen";
const String settingScreen = "/SettingScreen";

class AppRouter {
  static Route<dynamic>? customRouteGenerator(RouteSettings settings) {
    switch (settings.name) {
      case splashScreen:
        return MaterialPageRoute(builder: (_) => const SplashScreen());
      case signInScreen:
        return MaterialPageRoute(builder: (_) => const SignInScreen());
      case signUpScreen:
        return MaterialPageRoute(builder: (_) => const SignUpScreen());
      case homeScreen:
        return MaterialPageRoute(builder: (_) => const HomeScreen());
      case callScreen:
        return MaterialPageRoute(builder: (_) => const CallScreen());
      case statusScreen:
        return MaterialPageRoute(builder: (_) => const StatusScreen());
      case settingScreen:
        return MaterialPageRoute(builder: (_) => const SettingScreen());
    }
    return null;
  }
}
