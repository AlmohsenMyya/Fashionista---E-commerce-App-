import 'package:almohsen_s_application15/widgets/app_bar/custom_app_bar.dart';
import 'package:almohsen_s_application15/widgets/app_bar/appbar_leading_iconbutton_one.dart';
import 'package:almohsen_s_application15/widgets/app_bar/appbar_subtitle_one.dart';
import 'package:almohsen_s_application15/presentation/reviews_page/reviews_page.dart';
import 'package:flutter/material.dart';
import 'package:almohsen_s_application15/core/app_export.dart';
import 'controller/reviews_tab_container_controller.dart';

class ReviewsTabContainerScreen
    extends GetWidget<ReviewsTabContainerController> {
  const ReviewsTabContainerScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
            appBar: _buildAppBar(),
            body: SizedBox(
                width: double.maxFinite,
                child: Column(children: [
                  SizedBox(height: 24.v),
                  _buildTabview(),
                  SizedBox(
                      height: 642.v,
                      child: TabBarView(
                          controller: controller.tabviewController,
                          children: [ReviewsPage(), ReviewsPage()]))
                ]))));
  }

  /// Section Widget
  PreferredSizeWidget _buildAppBar() {
    return CustomAppBar(
        leadingWidth: 56.h,
        leading: AppbarLeadingIconbuttonOne(
            imagePath: ImageConstant.imgArrowDown,
            margin: EdgeInsets.only(left: 16.h, top: 5.v, bottom: 5.v),
            onTap: () {
              onTapArrowDown();
            }),
        centerTitle: true,
        title: AppbarSubtitleOne(text: "lbl_reviews".tr));
  }

  /// Section Widget
  Widget _buildTabview() {
    return Container(
        height: 52.v,
        width: 343.h,
        decoration: BoxDecoration(
            color: appTheme.gray200, borderRadius: BorderRadius.circular(10.h)),
        child: TabBar(
            controller: controller.tabviewController,
            labelPadding: EdgeInsets.zero,
            labelColor: appTheme.whiteA700,
            labelStyle: TextStyle(
                fontSize: 16.fSize,
                fontFamily: 'Poppins',
                fontWeight: FontWeight.w500),
            unselectedLabelColor: theme.colorScheme.primary,
            unselectedLabelStyle: TextStyle(
                fontSize: 16.fSize,
                fontFamily: 'Poppins',
                fontWeight: FontWeight.w500),
            indicator: BoxDecoration(
                color: theme.colorScheme.primary,
                borderRadius: BorderRadius.circular(10.h)),
            tabs: [
              Tab(child: Text("lbl_positive".tr)),
              Tab(child: Text("lbl_negetive".tr))
            ]));
  }

  /// Navigates to the previous screen.
  onTapArrowDown() {
    Get.back();
  }
}
