import 'package:get/get.dart';
import '../../views/login/phone_number_verification_view.dart';
import '../../views/login/sign_in_view.dart';
import '../../views/login/sign_up_view.dart';
import '../bindings/sign_in_binding.dart';
import '../bindings/sign_up_binding.dart';
import 'app_routes.dart';
import '../../views/not_found/not_found_view.dart';
import '../../views/onboarding/onboarding_view.dart';
import '../../views/splash/splash_view.dart';

class AppPages {
  static final pages = <GetPage>[
    GetPage(
      name: AppRoutes.splash,
      page: () => const SplashView(),
    ),
    GetPage(
      name: AppRoutes.notFound,
      page: () => const NotFoundView(),
    ),
    GetPage(
      name: AppRoutes.onboarding,
      page: () => const OnboardingView(),
    ),
    GetPage(
      name: AppRoutes.signUp,
      page: () => const SignUpView(),
      binding: SignUpBinding(),
    ),
    GetPage(
      name: AppRoutes.signIn,
      page: () => const SignInView(),
      binding: SignInBinding(),
    ),
    GetPage(
      name: AppRoutes.phoneNumberVerification,
      page: () => const PhoneNumberVerificationView(),
    )
  ];
}