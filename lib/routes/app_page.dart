import 'package:get/get_navigation/src/routes/get_route.dart';
import 'package:get/get_navigation/src/routes/transitions_type.dart';
import 'package:shreeji_delivery_app/pages/authentication/login/login_screen.dart';
import 'package:shreeji_delivery_app/pages/authentication/login/login_screen_binding.dart';
import 'package:shreeji_delivery_app/pages/authentication/forgot_password/forgot_password_screen.dart';
import 'package:shreeji_delivery_app/pages/authentication/forgot_password/forgot_password_screen_binding.dart';
import 'package:shreeji_delivery_app/pages/authentication/otp_verification/otp_verification_screen.dart';
import 'package:shreeji_delivery_app/pages/authentication/otp_verification/otp_verification_screen_binding.dart';
import 'package:shreeji_delivery_app/pages/authentication/reset_password/reset_password_screen.dart';
import 'package:shreeji_delivery_app/pages/authentication/reset_password/reset_password_screen_binding.dart';
import 'package:shreeji_delivery_app/pages/order/assigned_order/assigned_order_screen.dart';
import 'package:shreeji_delivery_app/pages/order/assigned_order/assigned_order_screen_binding.dart';
import 'package:shreeji_delivery_app/pages/order/completed_order/completed_order_screen.dart';
import 'package:shreeji_delivery_app/pages/order/completed_order/completed_order_screen_binding.dart';
import 'package:shreeji_delivery_app/pages/order/empty_order/empty_order_screen.dart';
import 'package:shreeji_delivery_app/pages/order/empty_order/empty_order_screen_binding.dart';
import 'package:shreeji_delivery_app/pages/order/issue_details/issue_details_screen.dart';
import 'package:shreeji_delivery_app/pages/order/issue_details/issue_details_screen_binding.dart';
import 'package:shreeji_delivery_app/pages/order/order_details/order_details_screen.dart';
import 'package:shreeji_delivery_app/pages/order/order_details/order_details_screen_binding.dart';
import 'package:shreeji_delivery_app/pages/order/payment/payment_screen.dart';
import 'package:shreeji_delivery_app/pages/order/payment/payment_screen_binding.dart';
import 'package:shreeji_delivery_app/pages/profile/profile_screen.dart';
import 'package:shreeji_delivery_app/pages/profile/profile_screen_binding.dart';
import 'package:shreeji_delivery_app/pages/splash_screen/splash_screen.dart';
import 'package:shreeji_delivery_app/pages/splash_screen/splash_screen_binding.dart';
import 'package:shreeji_delivery_app/routes/app_route.dart';

class AppPages {
  static final List<GetPage> getPages = [
    GetPage(
      name: AppRoutes.splashScreen,
      page: () => const SplashScreen(),
      binding: SplashScreenBinding(),
      transition: Transition.rightToLeft,
    ),
    GetPage(
      name: AppRoutes.loginScreen,
      page: () => const LoginScreen(),
      binding: LoginScreenBinding(),
      transition: Transition.rightToLeft,
    ),
    GetPage(
      name: AppRoutes.forgotPasswordScreen,
      page: () => const ForgotPasswordScreen(),
      binding:ForgotPasswordScreenBinding(),
      transition: Transition.rightToLeft,
    ),
    GetPage(
      name: AppRoutes.resetPasswordScreen,
      page: () => const ResetPasswordScreen(),
      binding:ResetPasswordScreenBinding(),
      transition: Transition.rightToLeft,
    ),
    GetPage(
      name: AppRoutes.completedOrderScreen,
      page: () => const CompletedOrderScreen(),
      binding: CompletedOrderScreenBinding(),
      transition: Transition.rightToLeft,
    ),
    GetPage(
      name: AppRoutes.assignedOrderScreen,
      page: () => const AssignedOrderScreen(),
      binding: AssignedOrderScreenBinding(),
      transition: Transition.rightToLeft,
    ),
    GetPage(
      name: AppRoutes.profileScreen,
      page: () => const ProfileScreen(),
      binding: ProfileScreenBinding(),
      transition: Transition.rightToLeft,
    ),
    GetPage(
      name: AppRoutes.otpVerificationScreen,
      page: () => const OtpVerificationScreen(),
      binding: OtpVerificationScreenBinding(),
      transition: Transition.rightToLeft,
    ),
    GetPage(
      name: AppRoutes.orderDetailsScreen,
      page: () => const OrderDetailsScreen(),
      binding: OrderDetailsScreenBinding(),
      transition: Transition.rightToLeft,
    ),
    GetPage(
      name: AppRoutes.paymentScreen,
      page: () => const PaymentScreen(),
      binding: PaymentScreenBinding(),
      transition: Transition.rightToLeft,
    ),
    GetPage(
      name: AppRoutes.issueDetailsScreen,
      page: () => const IssueDetailsScreen(),
      binding: IssueDetailsScreenBinding(),
      transition: Transition.rightToLeft,
    ),
    GetPage(
      name: AppRoutes.emptyOrderScreen,
      page: () => const EmptyOrderScreen(),
      binding: EmptyOrderScreenBinding(),
      transition: Transition.rightToLeft,
    )
  ];
}
