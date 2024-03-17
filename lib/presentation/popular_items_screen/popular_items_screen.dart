import 'package:almohsen_s_application15/widgets/app_bar/custom_app_bar.dart';
import 'package:almohsen_s_application15/widgets/app_bar/appbar_leading_iconbutton_one.dart';
import 'package:almohsen_s_application15/widgets/app_bar/appbar_subtitle_one.dart';
import 'package:almohsen_s_application15/widgets/app_bar/appbar_trailing_image.dart';
import 'widgets/popularitems_item_widget.dart';
import 'models/popularitems_item_model.dart';
import 'package:flutter/material.dart';
import 'package:almohsen_s_application15/core/app_export.dart';
import 'controller/popular_items_controller.dart';

class PopularItemsScreen extends GetWidget<PopularItemsController> {
  const PopularItemsScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
            appBar: _buildAppBar(),
            body: Padding(
                padding: EdgeInsets.only(left: 16.h, top: 24.v, right: 16.h),
                child: Obx(() => GridView.builder(
                    shrinkWrap: true,
                    gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                        mainAxisExtent: 293.v,
                        crossAxisCount: 2,
                        mainAxisSpacing: 15.h,
                        crossAxisSpacing: 15.h),
                    physics: NeverScrollableScrollPhysics(),
                    itemCount: controller.popularItemsModelObj.value
                        .popularitemsItemList.value.length,
                    itemBuilder: (context, index) {
                      PopularitemsItemModel model = controller
                          .popularItemsModelObj
                          .value
                          .popularitemsItemList
                          .value[index];
                      return PopularitemsItemWidget(model, onTapCard: () {
                        onTapCard();
                      });
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
        title: AppbarSubtitleOne(text: "lbl_popular_items".tr),
        actions: [
          AppbarTrailingImage(
              imagePath: ImageConstant.imgSearch,
              margin: EdgeInsets.symmetric(horizontal: 16.h, vertical: 13.v))
        ]);
  }

  /// Navigates to the previous screen.
  onTapArrowDown() {
    Get.back();
  }

  /// Navigates to the productViewScreen when the action is triggered.
  onTapCard() {
    Get.toNamed(
      AppRoutes.productViewScreen,
    );
  }
}
