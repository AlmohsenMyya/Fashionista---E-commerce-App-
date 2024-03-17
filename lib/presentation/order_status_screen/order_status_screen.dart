import 'package:almohsen_s_application15/widgets/app_bar/custom_app_bar.dart';
import 'package:almohsen_s_application15/widgets/app_bar/appbar_leading_iconbutton_one.dart';
import 'package:almohsen_s_application15/widgets/app_bar/appbar_subtitle_one.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'widgets/slider_item_widget.dart';
import 'models/slider_item_model.dart';
import 'widgets/orderstatus_item_widget.dart';
import 'models/orderstatus_item_model.dart';
import 'package:almohsen_s_application15/widgets/custom_elevated_button.dart';
import 'package:flutter/material.dart';
import 'package:almohsen_s_application15/core/app_export.dart';
import 'controller/order_status_controller.dart';

class OrderStatusScreen extends GetWidget<OrderStatusController> {
  const OrderStatusScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
            appBar: _buildAppBar(),
            body: Container(
                width: double.maxFinite,
                padding: EdgeInsets.symmetric(horizontal: 16.h, vertical: 24.v),
                child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      _buildSlider(),
                      SizedBox(height: 13.v),
                      _buildOrderStatus()
                    ])),
            bottomNavigationBar: _buildConfirmDelivery()));
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
        title: AppbarSubtitleOne(text: "lbl_order_status".tr));
  }

  /// Section Widget
  Widget _buildSlider() {
    return Obx(() => CarouselSlider.builder(
        options: CarouselOptions(
            height: 290.v,
            initialPage: 0,
            autoPlay: true,
            viewportFraction: 1.0,
            enableInfiniteScroll: false,
            scrollDirection: Axis.horizontal,
            onPageChanged: (index, reason) {
              controller.sliderIndex.value = index;
            }),
        itemCount:
            controller.orderStatusModelObj.value.sliderItemList.value.length,
        itemBuilder: (context, index, realIndex) {
          SliderItemModel model =
              controller.orderStatusModelObj.value.sliderItemList.value[index];
          return SliderItemWidget(model);
        }));
  }

  /// Section Widget
  Widget _buildOrderStatus() {
    return Padding(
        padding: EdgeInsets.only(left: 39.h, right: 131.h),
        child: Obx(() => ListView.separated(
            physics: NeverScrollableScrollPhysics(),
            shrinkWrap: true,
            separatorBuilder: (context, index) {
              return SizedBox(height: 1.v);
            },
            itemCount: controller
                .orderStatusModelObj.value.orderstatusItemList.value.length,
            itemBuilder: (context, index) {
              OrderstatusItemModel model = controller
                  .orderStatusModelObj.value.orderstatusItemList.value[index];
              return OrderstatusItemWidget(model);
            })));
  }

  /// Section Widget
  Widget _buildConfirmDelivery() {
    return CustomElevatedButton(
        text: "msg_confirm_delivery".tr,
        margin: EdgeInsets.only(left: 16.h, right: 16.h, bottom: 21.v),
        onPressed: () {
          onTapConfirmDelivery();
        });
  }

  /// Navigates to the previous screen.
  onTapArrowDown() {
    Get.back();
  }

  /// Navigates to the settingsScreen when the action is triggered.
  onTapConfirmDelivery() {
    Get.toNamed(
      AppRoutes.settingsScreen,
    );
  }
}
