import '../models/slider_item_model.dart';
import '../controller/order_status_controller.dart';
import 'package:flutter/material.dart';
import 'package:almohsen_s_application15/core/app_export.dart';

// ignore: must_be_immutable
class SliderItemWidget extends StatelessWidget {
  SliderItemWidget(
    this.sliderItemModelObj, {
    Key? key,
  }) : super(
          key: key,
        );

  SliderItemModel sliderItemModelObj;

  var controller = Get.find<OrderStatusController>();

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        CustomImageView(
          imagePath: ImageConstant.imgUnsplashVfrcrteqkl8,
          height: 227.v,
          width: 343.h,
          radius: BorderRadius.vertical(
            top: Radius.circular(12.h),
          ),
        ),
        Container(
          padding: EdgeInsets.symmetric(
            horizontal: 30.h,
            vertical: 9.v,
          ),
          decoration: AppDecoration.balck.copyWith(
            borderRadius: BorderRadiusStyle.customBorderBL12,
          ),
          child: Row(
            children: [
              CustomImageView(
                imagePath: ImageConstant.imgCheckmarkLime900,
                height: 30.adaptSize,
                width: 30.adaptSize,
                margin: EdgeInsets.only(
                  top: 7.v,
                  bottom: 6.v,
                ),
              ),
              Padding(
                padding: EdgeInsets.only(
                  left: 16.h,
                  top: 1.v,
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "lbl_delivered".tr,
                      style: CustomTextStyles.titleMediumWhiteA70016,
                    ),
                    Text(
                      "msg_drinks_june_07".tr,
                      style: CustomTextStyles.bodySmallWhiteA700,
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
