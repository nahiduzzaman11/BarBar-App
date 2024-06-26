import 'package:barbar_app/view/screesns/appointment/appointment_details/appointment_details_screen.dart';
import 'package:barbar_app/view/screesns/auth/forget/forget_password/forget_password_screen.dart';
import 'package:barbar_app/view/screesns/auth/forget/get_otp/get_otp_screen.dart';
import 'package:barbar_app/view/screesns/auth/forget/reset_password/reset_password_screen.dart';
import 'package:barbar_app/view/screesns/auth/sign_in/sign_in_screen.dart';
import 'package:barbar_app/view/screesns/auth/sign_up/select_address/select_address_screen.dart';
import 'package:barbar_app/view/screesns/auth/sign_up/select_gender/select_gender_screen.dart';
import 'package:barbar_app/view/screesns/auth/sign_up/set_password/set_password_screen.dart';
import 'package:barbar_app/view/screesns/auth/sign_up/set_profile_photo/set_profile_photo_screen.dart';
import 'package:barbar_app/view/screesns/auth/sign_up/sign_up_screen/sign_up_screen.dart';
import 'package:barbar_app/view/screesns/auth/sign_up/verify_email/verify_email_screen.dart';
import 'package:barbar_app/view/screesns/booking_payment/add_payment_screen.dart';
import 'package:barbar_app/view/screesns/booking_payment/confirm_appointment_screen.dart';
import 'package:barbar_app/view/screesns/booking_payment/confirm_booking_screen.dart';
import 'package:barbar_app/view/screesns/booking_payment/select_date_time_screen.dart';
import 'package:barbar_app/view/screesns/history/history_screen.dart';
import 'package:barbar_app/view/screesns/my_cart/check_out_screen.dart';
import 'package:barbar_app/view/screesns/my_cart/my_cart_screen.dart';
import 'package:barbar_app/view/screesns/navigation/navigation_screen.dart';
import 'package:barbar_app/view/screesns/notification/notification_screen.dart';
import 'package:barbar_app/view/screesns/onboarding/onboarding_screen.dart';
import 'package:barbar_app/view/screesns/product/product_details/product_details_screen.dart';
import 'package:barbar_app/view/screesns/product/product_screen/product_screen.dart';
import 'package:barbar_app/view/screesns/profile/edit_profile/edit_profile_screen/edit_profile_screen.dart';
import 'package:barbar_app/view/screesns/profile/edit_profile/edit_profile_validation/edit_profile_validation_screen.dart';
import 'package:barbar_app/view/screesns/profile/personal_information_screen/personal_information_screen.dart';
import 'package:barbar_app/view/screesns/salons/salon_screen/salons_screen.dart';
import 'package:barbar_app/view/screesns/salons/salons_details/salons_details_screen.dart';
import 'package:barbar_app/view/screesns/services/service_details/select_service/select_service_screen.dart';
import 'package:barbar_app/view/screesns/services/service_details/service_details_screen/service_details_screen.dart';
import 'package:barbar_app/view/screesns/services/service_screen/services_screen.dart';
import 'package:barbar_app/view/screesns/settings/about_us/about_us_screen.dart';
import 'package:barbar_app/view/screesns/settings/change_language/change_language_screen.dart';
import 'package:barbar_app/view/screesns/settings/change_password/change_password_screen.dart';
import 'package:barbar_app/view/screesns/settings/privacy_policy/privacy_policy_screen.dart';
import 'package:barbar_app/view/screesns/settings/settings_screen/settings_screen.dart';
import 'package:barbar_app/view/screesns/settings/terms_of_service/terms_of_service_screen.dart';
import 'package:barbar_app/view/screesns/splash/splash_screen.dart';
import 'package:barbar_app/view/screesns/support/support_screen.dart';
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

  static const String notificationScreen = "/notification_screen";

  static const String servicesScreen = "/services_screen";
  static const String serviceDetailsScreen = "/service_details_screen";
  static const String selectServiceScreen = "/select_service_screen";
  static const String selectDateTimeScreen = "/select_date_time_screen";
  static const String confirmBookingScreen = "/confirm_booking_screen";
  static const String addPaymentScreen = "/add_payment_screen";
  static const String confirmAppointmentScreen = "/confirm_appointment_screen";

  static const String salonsScreen = "/salons_screen";
  static const String salonDetailsScreen = "/salons_details_screen";

  static const String productScreen = "/product_screen";
  static const String productDetailsScreen = "/product_details_screen";
  static const String myCartScreen = "/my_cart_screen";
  static const String checkoutScreen = "/check_out_screen";

  static const String appointmentDetailsScreen = "/appointment_details_screen";


  static const String personalInfoScreen = "/personal_information_screen";
  static const String editProfile = "/edit_profile_screen";
  static const String editProfileValidation = "/edit_profile_validation_screen";
  static const String settingsScreen = "/settings_screen";
  static const String changePasswordScreen = "/change_password_screen";
  static const String changeLanguageScreen = "/change_language_screen";
  static const String termsOfServices = "/terms_of_service_screen";
  static const String privacyPolicy = "/privacy_policy_screen";
  static const String aboutUs = "/about_us_screen";
  static const String support = "/support_screen";
  static const String historyScreen = "/history_screen";


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
    GetPage(name: navigationScreen, page: ()=>  NavigationScreen(selectedIndex: 0)),

    GetPage(name: notificationScreen, page: ()=>  const NotificationScreen()),

    GetPage(name: servicesScreen, page: ()=>  const ServicesScreen()),
    GetPage(name: serviceDetailsScreen, page: ()=>  const ServiceDetailsScreen()),
    GetPage(name: selectServiceScreen, page: ()=>  const SelectServiceScreen()),
    GetPage(name: selectDateTimeScreen, page: ()=>  const SelectDateTime()),
    GetPage(name: confirmBookingScreen, page: ()=>  const ConfirmBookingScreen()),
    GetPage(name: addPaymentScreen, page: ()=>  const AddPaymentScreen()),
    GetPage(name: confirmAppointmentScreen, page: ()=>  const ConfirmAppointment()),

    GetPage(name: salonsScreen, page: ()=>  const SalonsScreen()),
    GetPage(name: salonDetailsScreen, page: ()=>  const SalonsDetailsScreen()),

    GetPage(name: productScreen, page: ()=>  const ProductScreen()),
    GetPage(name: productDetailsScreen, page: ()=>  const ProductDetailsScreen()),
    GetPage(name: myCartScreen, page: ()=>  const MyCartScreen()),
    GetPage(name: checkoutScreen, page: ()=>  const CheckOutScreen()),


    GetPage(name: appointmentDetailsScreen, page: ()=>  const AppointmentDetailsScreen()),

    GetPage(name: personalInfoScreen, page: ()=>  const PersonalInformationScreen()),
    GetPage(name: editProfile, page: ()=>  const EditProfileScreen()),
    GetPage(name: editProfileValidation, page: ()=>  const EditProfileValidationScreen()),
    GetPage(name: settingsScreen, page: ()=>  const SettingsScreen()),
    GetPage(name: changePasswordScreen, page: ()=>  const ChangePasswordScreen()),
    GetPage(name: changeLanguageScreen, page: ()=>  const ChangeLanguageScreen()),
    GetPage(name: termsOfServices, page: ()=>  const TermsOfServiceScreen()),
    GetPage(name: privacyPolicy, page: ()=>  const PrivacyPolicyScreen()),
    GetPage(name: aboutUs, page: ()=>  const AboutUsScreen()),
    GetPage(name: support, page: ()=>  const SupportScreen()),
    GetPage(name: historyScreen, page: ()=>  const HistoryScreen()),

  ];
}