import '../models/socialaccountlink_item_model.dart';
import '../controller/social_account_link_controller.dart';
import 'package:flutter/material.dart';
import 'package:almohsen_s_application15/core/app_export.dart';

// ignore: must_be_immutable
class SocialaccountlinkItemWidget extends StatelessWidget {
  SocialaccountlinkItemWidget(
    this.socialaccountlinkItemModelObj, {
    Key? key,
  }) : super(
          key: key,
        );

  SocialaccountlinkItemModel socialaccountlinkItemModelObj;

  var controller = Get.find<SocialAccountLinkController>();

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(16.h),
      decoration: AppDecoration.fillGray.copyWith(
        borderRadius: BorderRadiusStyle.roundedBorder12,
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Obx(
            () => CustomImageView(
              imagePath: socialaccountlinkItemModelObj.facebook!.value,
              height: 40.adaptSize,
              width: 40.adaptSize,
            ),
          ),
          Padding(
            padding: EdgeInsets.only(left: 16.h),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Obx(
                  () => Text(
                    socialaccountlinkItemModelObj.facebook1!.value,
                    style: theme.textTheme.bodyLarge,
                  ),
                ),
                Obx(
                  () => Text(
                    socialaccountlinkItemModelObj.welcomeToFacebook!.value,
                    style: theme.textTheme.bodySmall,
                  ),
                ),
              ],
            ),
          ),
          Spacer(),
          Obx(
            () => CustomImageView(
              imagePath: socialaccountlinkItemModelObj.facebook2!.value,
              height: 24.adaptSize,
              width: 24.adaptSize,
              margin: EdgeInsets.symmetric(vertical: 8.v),
            ),
          ),
        ],
      ),
    );
  }
}
