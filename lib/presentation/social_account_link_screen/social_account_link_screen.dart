import 'package:almohsen_s_application15/widgets/app_bar/custom_app_bar.dart';
import 'package:almohsen_s_application15/widgets/app_bar/appbar_leading_iconbutton_one.dart';
import 'package:almohsen_s_application15/widgets/app_bar/appbar_subtitle_one.dart';
import 'widgets/socialaccountlink_item_widget.dart';
import 'models/socialaccountlink_item_model.dart';
import 'package:flutter/material.dart';
import 'package:almohsen_s_application15/core/app_export.dart';
import 'controller/social_account_link_controller.dart';

class SocialAccountLinkScreen extends GetWidget<SocialAccountLinkController> {
  const SocialAccountLinkScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
            appBar: _buildAppBar(),
            body: Padding(
                padding: EdgeInsets.only(left: 16.h, top: 24.v, right: 16.h),
                child: Obx(() => ListView.separated(
                    physics: NeverScrollableScrollPhysics(),
                    shrinkWrap: true,
                    separatorBuilder: (context, index) {
                      return SizedBox(height: 16.v);
                    },
                    itemCount: controller.socialAccountLinkModelObj.value
                        .socialaccountlinkItemList.value.length,
                    itemBuilder: (context, index) {
                      SocialaccountlinkItemModel model = controller
                          .socialAccountLinkModelObj
                          .value
                          .socialaccountlinkItemList
                          .value[index];
                      return SocialaccountlinkItemWidget(model);
                    })))));
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
        title: AppbarSubtitleOne(text: "lbl_social_network".tr));
  }

  /// Navigates to the previous screen.
  onTapArrowDown() {
    Get.back();
  }
}
