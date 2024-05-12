import 'package:barbar_app/view/screesns/auth/select_address/select_address_screen.dart';
import 'package:barbar_app/view/screesns/auth/select_gender/select_gender_screen.dart';
import 'package:barbar_app/view/screesns/auth/set_password/set_password_screen.dart';
import 'package:barbar_app/view/screesns/auth/set_profile_photo/set_profile_photo_screen.dart';
import 'package:barbar_app/view/screesns/auth/sign_in/sign_in_screen.dart';
import 'package:barbar_app/view/screesns/auth/sign_up/sign_up_screen.dart';
import 'package:barbar_app/view/screesns/auth/verify_email/verify_email_screen.dart';
import 'package:barbar_app/view/screesns/forget/forget_password/forget_password_screen.dart';
import 'package:barbar_app/view/screesns/forget/get_otp/get_otp_screen.dart';
import 'package:barbar_app/view/screesns/forget/reset_password/reset_password_screen.dart';
import 'package:barbar_app/view/screesns/navigation/navigation_screen.dart';
import 'package:barbar_app/view/screesns/onboarding/onboarding_screen.dart';
import 'package:barbar_app/view/screesns/salons/salons_screen.dart';
import 'package:barbar_app/view/screesns/splash/splash_screen.dart';
import 'package:get/get.dart';

class AppRoute {

  static const String splashScreen = "/splash_screen";
  static const String onboarding = "/onboarding_screen";
  static const String signInScreen = "/sign_in_screen";
  static const String signUpScreen = "/sign_up_screen";
  static const String verifyEmailScreen = "/verify_email_screen";
  static const String selectGenderScreen = "/select_gender_screen";
  static const String selectAddressScreen = "/select_address_screen";
  static const String setPasswordScreen = "/set_password_screen";
  static const String setProfilePhotoScreen = "/set_profile_photo_screen";
  static const String forgetPasswordScreen = "/forget_password_screen";
  static const String getOTPScreen = "/get_otp_screen";
  static const String resetPasswordScreen = "/reset_password_screen";
  static const String navigationScreen = "/navigation_screen";

  static const String salonsScreen = "/salons_screen";

  static List<GetPage> routes = [
    GetPage(name: splashScreen, page: ()=> const SplashScreen()),
    GetPage(name: onboarding, page: ()=> const OnboardingScreen()),
    GetPage(name: signInScreen, page: ()=> const SignInScreen()),
    GetPage(name: signUpScreen, page: ()=> const SignUpScreen()),
    GetPage(name: verifyEmailScreen, page: ()=> const VerifyEmailScreen()),
    GetPage(name: selectGenderScreen, page: ()=> const SelectGenderScreen()),
    GetPage(name: selectAddressScreen, page: ()=> const SelectAddressScreen()),
    GetPage(name: setPasswordScreen, page: ()=> const SetPasswordScreen()),
    GetPage(name: setProfilePhotoScreen, page: ()=> const SetProfilePhotoScreen()),
    GetPage(name: forgetPasswordScreen, page: ()=> const ForgetPasswordScreen()),
    GetPage(name: getOTPScreen, page: ()=> const GetOTPScreen()),
    GetPage(name: resetPasswordScreen, page: ()=> const ResetPasswordScreen()),
    GetPage(name: navigationScreen, page: ()=>  const NavigationScreen()),

    GetPage(name: salonsScreen, page: ()=>  const SalonsScreen()),
  ];
}