import 'package:almohsen_s_application15/widgets/app_bar/custom_app_bar.dart';
import 'package:almohsen_s_application15/widgets/app_bar/appbar_leading_image.dart';
import 'package:almohsen_s_application15/widgets/app_bar/appbar_trailing_image.dart';
import 'package:almohsen_s_application15/presentation/home_page/home_page.dart';
import 'package:flutter/material.dart';
import 'package:almohsen_s_application15/core/app_export.dart';
import 'controller/home_tab_container_controller.dart';
import 'models/home_tab_container_model.dart';

// ignore_for_file: must_be_immutable
class HomeTabContainerPage extends StatelessWidget {
  HomeTabContainerPage({Key? key}) : super(key: key);

  HomeTabContainerController controller =
      Get.put(HomeTabContainerController(HomeTabContainerModel().obs));

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
            appBar: _buildAppBar(),
            body: SizedBox(
                width: SizeUtils.width,
                child: SingleChildScrollView(
                    padding: EdgeInsets.only(top: 25.v),
                    child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Padding(
                              padding: EdgeInsets.only(left: 16.h),
                              child: Text("lbl_find_your_style".tr,
                                  style: CustomTextStyles
                                      .headlineSmallPrimaryBold)),
                          SizedBox(height: 14.v),
                          _buildTabview(),
                          SizedBox(
                              height: 722.v,
                              child: TabBarView(
                                  controller: controller.tabviewController,
                                  children: [
                                    HomePage(),
                                    HomePage(),
                                    HomePage(),
                                    HomePage(),
                                    HomePage()
                                  ]))
                        ])))));
  }

  /// Section Widget
  PreferredSizeWidget _buildAppBar() {
    return CustomAppBar(
        leadingWidth: 40.h,
        leading: AppbarLeadingImage(
            imagePath: ImageConstant.imgIconPrimary,
            margin: EdgeInsets.only(left: 16.h, top: 13.v, bottom: 13.v)),
        actions: [
          AppbarTrailingImage(
              imagePath: ImageConstant.imgSearch,
              margin: EdgeInsets.only(left: 16.h, top: 13.v, right: 13.h)),
          AppbarTrailingImage(
              imagePath: ImageConstant.imgNotificationsActive,
              margin: EdgeInsets.only(left: 24.h, top: 13.v, right: 29.h),
              onTap: () {
                onTapNotificationsActive();
              })
        ]);
  }

  /// Section Widget
  Widget _buildTabview() {
    return Container(
        height: 37.v,
        width: 359.h,
        margin: EdgeInsets.only(left: 16.h),
        child: TabBar(
            controller: controller.tabviewController,
            isScrollable: true,
            labelColor: appTheme.whiteA700,
            labelStyle: TextStyle(
                fontSize: 14.fSize,
                fontFamily: 'Poppins',
                fontWeight: FontWeight.w400),
            unselectedLabelColor: theme.colorScheme.primary,
            unselectedLabelStyle: TextStyle(
                fontSize: 14.fSize,
                fontFamily: 'Poppins',
                fontWeight: FontWeight.w400),
            indicator: BoxDecoration(
                color: theme.colorScheme.primary,
                borderRadius: BorderRadius.circular(7.h)),
            tabs: [
              Tab(child: Text("lbl_all".tr)),
              Tab(child: Text("lbl_summer".tr)),
              Tab(child: Text("lbl_man".tr)),
              Tab(child: Text("lbl_woman".tr)),
              Tab(child: Text("lbl_kids".tr))
            ]));
  }

  /// Navigates to the notificationScreen when the action is triggered.
  onTapNotificationsActive() {
    Get.toNamed(
      AppRoutes.notificationScreen,
    );
  }
}
