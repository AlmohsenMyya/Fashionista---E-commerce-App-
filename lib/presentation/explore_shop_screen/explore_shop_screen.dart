import 'package:almohsen_s_application15/widgets/app_bar/custom_app_bar.dart';
import 'package:almohsen_s_application15/widgets/app_bar/appbar_title.dart';
import 'models/chipview_item_model.dart';
import '../explore_shop_screen/widgets/chipview_item_widget.dart';
import 'package:almohsen_s_application15/widgets/custom_elevated_button.dart';
import 'package:flutter/material.dart';
import 'package:almohsen_s_application15/core/app_export.dart';
import 'controller/explore_shop_controller.dart';

// ignore_for_file: must_be_immutable
class ExploreShopScreen extends GetWidget<ExploreShopController> {
  const ExploreShopScreen({Key? key})
      : super(
          key: key,
        );

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: _buildAppBar(),
        body: Container(
          width: double.maxFinite,
          padding: EdgeInsets.symmetric(
            horizontal: 16.h,
            vertical: 8.v,
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                width: 304.h,
                margin: EdgeInsets.only(right: 38.h),
                child: Text(
                  "msg_choose_which_you".tr,
                  maxLines: 2,
                  overflow: TextOverflow.ellipsis,
                  style: theme.textTheme.bodyLarge!.copyWith(
                    height: 1.50,
                  ),
                ),
              ),
              SizedBox(height: 28.v),
              _buildChipView(),
              SizedBox(height: 5.v),
            ],
          ),
        ),
        bottomNavigationBar: _buildExploreShopButton(),
      ),
    );
  }

  /// Section Widget
  PreferredSizeWidget _buildAppBar() {
    return CustomAppBar(
      height: 86.v,
      title: AppbarTitle(
        text: "msg_what_products_you".tr,
        margin: EdgeInsets.only(left: 16.h),
      ),
    );
  }

  /// Section Widget
  Widget _buildChipView() {
    return Obx(
      () => Wrap(
        runSpacing: 12.v,
        spacing: 12.h,
        children: List<Widget>.generate(
          controller.exploreShopModelObj.value.chipviewItemList.value.length,
          (index) {
            ChipviewItemModel model = controller
                .exploreShopModelObj.value.chipviewItemList.value[index];

            return ChipviewItemWidget(
              model,
            );
          },
        ),
      ),
    );
  }

  /// Section Widget
  Widget _buildExploreShopButton() {
    return CustomElevatedButton(
      text: "lbl_explore_shop".tr,
      margin: EdgeInsets.only(
        left: 16.h,
        right: 16.h,
        bottom: 36.v,
      ),
    );
  }
}
