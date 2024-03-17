import 'package:get/get.dart';
import '../presentation/splash_screen/splash_screen.dart';
import '../presentation/splash_screen/binding/splash_binding.dart';
import '../presentation/onbording_one_screen/onbording_one_screen.dart';
import '../presentation/onbording_one_screen/binding/onbording_one_binding.dart';
import '../presentation/onbording_two_screen/onbording_two_screen.dart';
import '../presentation/onbording_two_screen/binding/onbording_two_binding.dart';
import '../presentation/onbording_three_screen/onbording_three_screen.dart';
import '../presentation/onbording_three_screen/binding/onbording_three_binding.dart';
import '../presentation/sign_up_sign_in_screen/sign_up_sign_in_screen.dart';
import '../presentation/sign_up_sign_in_screen/binding/sign_up_sign_in_binding.dart';
import '../presentation/sign_in_screen/sign_in_screen.dart';
import '../presentation/sign_in_screen/binding/sign_in_binding.dart';
import '../presentation/sign_up_screen/sign_up_screen.dart';
import '../presentation/sign_up_screen/binding/sign_up_binding.dart';
import '../presentation/information_screen/information_screen.dart';
import '../presentation/information_screen/binding/information_binding.dart';
import '../presentation/forgot_password_screen/forgot_password_screen.dart';
import '../presentation/forgot_password_screen/binding/forgot_password_binding.dart';
import '../presentation/verification_code_screen/verification_code_screen.dart';
import '../presentation/verification_code_screen/binding/verification_code_binding.dart';
import '../presentation/reset_password_screen/reset_password_screen.dart';
import '../presentation/reset_password_screen/binding/reset_password_binding.dart';
import '../presentation/explore_shop_screen/explore_shop_screen.dart';
import '../presentation/explore_shop_screen/binding/explore_shop_binding.dart';
import '../presentation/home_container_screen/home_container_screen.dart';
import '../presentation/home_container_screen/binding/home_container_binding.dart';
import '../presentation/popular_items_screen/popular_items_screen.dart';
import '../presentation/popular_items_screen/binding/popular_items_binding.dart';
import '../presentation/product_view_screen/product_view_screen.dart';
import '../presentation/product_view_screen/binding/product_view_binding.dart';
import '../presentation/checkout_screen/checkout_screen.dart';
import '../presentation/checkout_screen/binding/checkout_binding.dart';
import '../presentation/complete_screen/complete_screen.dart';
import '../presentation/complete_screen/binding/complete_binding.dart';
import '../presentation/tracking_order_screen/tracking_order_screen.dart';
import '../presentation/tracking_order_screen/binding/tracking_order_binding.dart';
import '../presentation/order_status_screen/order_status_screen.dart';
import '../presentation/order_status_screen/binding/order_status_binding.dart';
import '../presentation/reviews_tab_container_screen/reviews_tab_container_screen.dart';
import '../presentation/reviews_tab_container_screen/binding/reviews_tab_container_binding.dart';
import '../presentation/write_a_review_screen/write_a_review_screen.dart';
import '../presentation/write_a_review_screen/binding/write_a_review_binding.dart';
import '../presentation/settings_screen/settings_screen.dart';
import '../presentation/settings_screen/binding/settings_binding.dart';
import '../presentation/notification_screen/notification_screen.dart';
import '../presentation/notification_screen/binding/notification_binding.dart';
import '../presentation/discount_items_screen/discount_items_screen.dart';
import '../presentation/discount_items_screen/binding/discount_items_binding.dart';
import '../presentation/social_account_link_screen/social_account_link_screen.dart';
import '../presentation/social_account_link_screen/binding/social_account_link_binding.dart';
import '../presentation/chat_screen/chat_screen.dart';
import '../presentation/chat_screen/binding/chat_binding.dart';
import '../presentation/app_navigation_screen/app_navigation_screen.dart';
import '../presentation/app_navigation_screen/binding/app_navigation_binding.dart';

class AppRoutes {
  static const String splashScreen = '/splash_screen';

  static const String onbordingOneScreen = '/onbording_one_screen';

  static const String onbordingTwoScreen = '/onbording_two_screen';

  static const String onbordingThreeScreen = '/onbording_three_screen';

  static const String signUpSignInScreen = '/sign_up_sign_in_screen';

  static const String signInScreen = '/sign_in_screen';

  static const String signUpScreen = '/sign_up_screen';

  static const String informationScreen = '/information_screen';

  static const String forgotPasswordScreen = '/forgot_password_screen';

  static const String verificationCodeScreen = '/verification_code_screen';

  static const String resetPasswordScreen = '/reset_password_screen';

  static const String exploreShopScreen = '/explore_shop_screen';

  static const String homePage = '/home_page';

  static const String homeTabContainerPage = '/home_tab_container_page';

  static const String homeContainerScreen = '/home_container_screen';

  static const String popularItemsScreen = '/popular_items_screen';

  static const String productViewScreen = '/product_view_screen';

  static const String myCartPage = '/my_cart_page';

  static const String checkoutScreen = '/checkout_screen';

  static const String completeScreen = '/complete_screen';

  static const String trackingOrderScreen = '/tracking_order_screen';

  static const String orderStatusScreen = '/order_status_screen';

  static const String reviewsPage = '/reviews_page';

  static const String reviewsTabContainerScreen =
      '/reviews_tab_container_screen';

  static const String writeAReviewScreen = '/write_a_review_screen';

  static const String settingsScreen = '/settings_screen';

  static const String searchPage = '/search_page';

  static const String notificationScreen = '/notification_screen';

  static const String discountItemsScreen = '/discount_items_screen';

  static const String socialAccountLinkScreen = '/social_account_link_screen';

  static const String profilePage = '/profile_page';

  static const String chatScreen = '/chat_screen';

  static const String appNavigationScreen = '/app_navigation_screen';

  static const String initialRoute = '/initialRoute';

  static List<GetPage> pages = [
    GetPage(
      name: splashScreen,
      page: () => SplashScreen(),
      bindings: [
        SplashBinding(),
      ],
    ),
    GetPage(
      name: onbordingOneScreen,
      page: () => OnbordingOneScreen(),
      bindings: [
        OnbordingOneBinding(),
      ],
    ),
    GetPage(
      name: onbordingTwoScreen,
      page: () => OnbordingTwoScreen(),
      bindings: [
        OnbordingTwoBinding(),
      ],
    ),
    GetPage(
      name: onbordingThreeScreen,
      page: () => OnbordingThreeScreen(),
      bindings: [
        OnbordingThreeBinding(),
      ],
    ),
    GetPage(
      name: signUpSignInScreen,
      page: () => SignUpSignInScreen(),
      bindings: [
        SignUpSignInBinding(),
      ],
    ),
    GetPage(
      name: signInScreen,
      page: () => SignInScreen(),
      bindings: [
        SignInBinding(),
      ],
    ),
    GetPage(
      name: signUpScreen,
      page: () => SignUpScreen(),
      bindings: [
        SignUpBinding(),
      ],
    ),
    GetPage(
      name: informationScreen,
      page: () => InformationScreen(),
      bindings: [
        InformationBinding(),
      ],
    ),
    GetPage(
      name: forgotPasswordScreen,
      page: () => ForgotPasswordScreen(),
      bindings: [
        ForgotPasswordBinding(),
      ],
    ),
    GetPage(
      name: verificationCodeScreen,
      page: () => VerificationCodeScreen(),
      bindings: [
        VerificationCodeBinding(),
      ],
    ),
    GetPage(
      name: resetPasswordScreen,
      page: () => ResetPasswordScreen(),
      bindings: [
        ResetPasswordBinding(),
      ],
    ),
    GetPage(
      name: exploreShopScreen,
      page: () => ExploreShopScreen(),
      bindings: [
        ExploreShopBinding(),
      ],
    ),
    GetPage(
      name: homeContainerScreen,
      page: () => HomeContainerScreen(),
      bindings: [
        HomeContainerBinding(),
      ],
    ),
    GetPage(
      name: popularItemsScreen,
      page: () => PopularItemsScreen(),
      bindings: [
        PopularItemsBinding(),
      ],
    ),
    GetPage(
      name: productViewScreen,
      page: () => ProductViewScreen(),
      bindings: [
        ProductViewBinding(),
      ],
    ),
    GetPage(
      name: checkoutScreen,
      page: () => CheckoutScreen(),
      bindings: [
        CheckoutBinding(),
      ],
    ),
    GetPage(
      name: completeScreen,
      page: () => CompleteScreen(),
      bindings: [
        CompleteBinding(),
      ],
    ),
    GetPage(
      name: trackingOrderScreen,
      page: () => TrackingOrderScreen(),
      bindings: [
        TrackingOrderBinding(),
      ],
    ),
    GetPage(
      name: orderStatusScreen,
      page: () => OrderStatusScreen(),
      bindings: [
        OrderStatusBinding(),
      ],
    ),
    GetPage(
      name: reviewsTabContainerScreen,
      page: () => ReviewsTabContainerScreen(),
      bindings: [
        ReviewsTabContainerBinding(),
      ],
    ),
    GetPage(
      name: writeAReviewScreen,
      page: () => WriteAReviewScreen(),
      bindings: [
        WriteAReviewBinding(),
      ],
    ),
    GetPage(
      name: settingsScreen,
      page: () => SettingsScreen(),
      bindings: [
        SettingsBinding(),
      ],
    ),
    GetPage(
      name: notificationScreen,
      page: () => NotificationScreen(),
      bindings: [
        NotificationBinding(),
      ],
    ),
    GetPage(
      name: discountItemsScreen,
      page: () => DiscountItemsScreen(),
      bindings: [
        DiscountItemsBinding(),
      ],
    ),
    GetPage(
      name: socialAccountLinkScreen,
      page: () => SocialAccountLinkScreen(),
      bindings: [
        SocialAccountLinkBinding(),
      ],
    ),
    GetPage(
      name: chatScreen,
      page: () => ChatScreen(),
      bindings: [
        ChatBinding(),
      ],
    ),
    GetPage(
      name: appNavigationScreen,
      page: () => AppNavigationScreen(),
      bindings: [
        AppNavigationBinding(),
      ],
    ),
    GetPage(
      name: initialRoute,
      page: () => SplashScreen(),
      bindings: [
        SplashBinding(),
      ],
    )
  ];
}
