import 'package:barbar_app/view/screesns/onboarding/onboarding_screen.dart';
import 'package:barbar_app/view/screesns/splash/splash_screen.dart';
import 'package:get/get.dart';

class AppRoute {

  static const String splashScreen = "/splash_screen";
  static const String onboarding = "/onboarding_screen";

  static List<GetPage> routes = [
    GetPage(name: splashScreen, page: ()=> const SplashScreen()),
    GetPage(name: onboarding, page: ()=> const OnboardingScreen()),
  ];
}