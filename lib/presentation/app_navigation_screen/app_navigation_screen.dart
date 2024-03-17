import 'package:flutter/material.dart';
import 'package:almohsen_s_application15/core/app_export.dart';
import 'controller/app_navigation_controller.dart';

// ignore_for_file: must_be_immutable
class AppNavigationScreen extends GetWidget<AppNavigationController> {
  const AppNavigationScreen({Key? key})
      : super(
          key: key,
        );

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Color(0XFFFFFFFF),
        body: SizedBox(
          width: double.maxFinite,
          child: Column(
            children: [
              _buildAppNavigation(),
              Expanded(
                child: SingleChildScrollView(
                  child: Container(
                    decoration: BoxDecoration(
                      color: Color(0XFFFFFFFF),
                    ),
                    child: Column(
                      children: [
                        _buildScreenTitle(
                          screenTitle: "Splash Screen".tr,
                          onTapScreenTitle: () =>
                              onTapScreenTitle(AppRoutes.splashScreen),
                        ),
                        _buildScreenTitle(
                          screenTitle: "Onbording One".tr,
                          onTapScreenTitle: () =>
                              onTapScreenTitle(AppRoutes.onbordingOneScreen),
                        ),
                        _buildScreenTitle(
                          screenTitle: "Onbording Two".tr,
                          onTapScreenTitle: () =>
                              onTapScreenTitle(AppRoutes.onbordingTwoScreen),
                        ),
                        _buildScreenTitle(
                          screenTitle: "Onbording Three".tr,
                          onTapScreenTitle: () =>
                              onTapScreenTitle(AppRoutes.onbordingThreeScreen),
                        ),
                        _buildScreenTitle(
                          screenTitle: "Sign Up Sign In".tr,
                          onTapScreenTitle: () =>
                              onTapScreenTitle(AppRoutes.signUpSignInScreen),
                        ),
                        _buildScreenTitle(
                          screenTitle: "Sign In".tr,
                          onTapScreenTitle: () =>
                              onTapScreenTitle(AppRoutes.signInScreen),
                        ),
                        _buildScreenTitle(
                          screenTitle: "Sign Up".tr,
                          onTapScreenTitle: () =>
                              onTapScreenTitle(AppRoutes.signUpScreen),
                        ),
                        _buildScreenTitle(
                          screenTitle: "Information".tr,
                          onTapScreenTitle: () =>
                              onTapScreenTitle(AppRoutes.informationScreen),
                        ),
                        _buildScreenTitle(
                          screenTitle: "Forgot Password".tr,
                          onTapScreenTitle: () =>
                              onTapScreenTitle(AppRoutes.forgotPasswordScreen),
                        ),
                        _buildScreenTitle(
                          screenTitle: "Verification Code".tr,
                          onTapScreenTitle: () => onTapScreenTitle(
                              AppRoutes.verificationCodeScreen),
                        ),
                        _buildScreenTitle(
                          screenTitle: "Reset Password".tr,
                          onTapScreenTitle: () =>
                              onTapScreenTitle(AppRoutes.resetPasswordScreen),
                        ),
                        _buildScreenTitle(
                          screenTitle: "Explore Shop".tr,
                          onTapScreenTitle: () =>
                              onTapScreenTitle(AppRoutes.exploreShopScreen),
                        ),
                        _buildScreenTitle(
                          screenTitle: "Home - Container".tr,
                          onTapScreenTitle: () =>
                              onTapScreenTitle(AppRoutes.homeContainerScreen),
                        ),
                        _buildScreenTitle(
                          screenTitle: "Popular Items".tr,
                          onTapScreenTitle: () =>
                              onTapScreenTitle(AppRoutes.popularItemsScreen),
                        ),
                        _buildScreenTitle(
                          screenTitle: "Product View".tr,
                          onTapScreenTitle: () =>
                              onTapScreenTitle(AppRoutes.productViewScreen),
                        ),
                        _buildScreenTitle(
                          screenTitle: "Checkout".tr,
                          onTapScreenTitle: () =>
                              onTapScreenTitle(AppRoutes.checkoutScreen),
                        ),
                        _buildScreenTitle(
                          screenTitle: "Complete".tr,
                          onTapScreenTitle: () =>
                              onTapScreenTitle(AppRoutes.completeScreen),
                        ),
                        _buildScreenTitle(
                          screenTitle: "Tracking Order".tr,
                          onTapScreenTitle: () =>
                              onTapScreenTitle(AppRoutes.trackingOrderScreen),
                        ),
                        _buildScreenTitle(
                          screenTitle: "Order Status".tr,
                          onTapScreenTitle: () =>
                              onTapScreenTitle(AppRoutes.orderStatusScreen),
                        ),
                        _buildScreenTitle(
                          screenTitle: "Reviews - Tab Container".tr,
                          onTapScreenTitle: () => onTapScreenTitle(
                              AppRoutes.reviewsTabContainerScreen),
                        ),
                        _buildScreenTitle(
                          screenTitle: "Write a review".tr,
                          onTapScreenTitle: () =>
                              onTapScreenTitle(AppRoutes.writeAReviewScreen),
                        ),
                        _buildScreenTitle(
                          screenTitle: "Settings".tr,
                          onTapScreenTitle: () =>
                              onTapScreenTitle(AppRoutes.settingsScreen),
                        ),
                        _buildScreenTitle(
                          screenTitle: "Notification".tr,
                          onTapScreenTitle: () =>
                              onTapScreenTitle(AppRoutes.notificationScreen),
                        ),
                        _buildScreenTitle(
                          screenTitle: "Discount Items".tr,
                          onTapScreenTitle: () =>
                              onTapScreenTitle(AppRoutes.discountItemsScreen),
                        ),
                        _buildScreenTitle(
                          screenTitle: "Social Account Link".tr,
                          onTapScreenTitle: () => onTapScreenTitle(
                              AppRoutes.socialAccountLinkScreen),
                        ),
                        _buildScreenTitle(
                          screenTitle: "Chat".tr,
                          onTapScreenTitle: () =>
                              onTapScreenTitle(AppRoutes.chatScreen),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  /// Section Widget
  Widget _buildAppNavigation() {
    return Container(
      decoration: BoxDecoration(
        color: Color(0XFFFFFFFF),
      ),
      child: Column(
        children: [
          SizedBox(height: 10.v),
          Align(
            alignment: Alignment.centerLeft,
            child: Padding(
              padding: EdgeInsets.symmetric(horizontal: 20.h),
              child: Text(
                "App Navigation".tr,
                textAlign: TextAlign.center,
                style: TextStyle(
                  color: Color(0XFF000000),
                  fontSize: 20.fSize,
                  fontFamily: 'Roboto',
                  fontWeight: FontWeight.w400,
                ),
              ),
            ),
          ),
          SizedBox(height: 10.v),
          Align(
            alignment: Alignment.centerLeft,
            child: Padding(
              padding: EdgeInsets.only(left: 20.h),
              child: Text(
                "Check your app's UI from the below demo screens of your app."
                    .tr,
                textAlign: TextAlign.center,
                style: TextStyle(
                  color: Color(0XFF888888),
                  fontSize: 16.fSize,
                  fontFamily: 'Roboto',
                  fontWeight: FontWeight.w400,
                ),
              ),
            ),
          ),
          SizedBox(height: 5.v),
          Divider(
            height: 1.v,
            thickness: 1.v,
            color: Color(0XFF000000),
          ),
        ],
      ),
    );
  }

  /// Common widget
  Widget _buildScreenTitle({
    required String screenTitle,
    Function? onTapScreenTitle,
  }) {
    return GestureDetector(
      onTap: () {
        onTapScreenTitle!.call();
      },
      child: Container(
        decoration: BoxDecoration(
          color: Color(0XFFFFFFFF),
        ),
        child: Column(
          children: [
            SizedBox(height: 10.v),
            Align(
              alignment: Alignment.centerLeft,
              child: Padding(
                padding: EdgeInsets.symmetric(horizontal: 20.h),
                child: Text(
                  screenTitle,
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    color: Color(0XFF000000),
                    fontSize: 20.fSize,
                    fontFamily: 'Roboto',
                    fontWeight: FontWeight.w400,
                  ),
                ),
              ),
            ),
            SizedBox(height: 10.v),
            SizedBox(height: 5.v),
            Divider(
              height: 1.v,
              thickness: 1.v,
              color: Color(0XFF888888),
            ),
          ],
        ),
      ),
    );
  }

  /// Common click event
  void onTapScreenTitle(String routeName) {
    Get.toNamed(routeName);
  }
}
