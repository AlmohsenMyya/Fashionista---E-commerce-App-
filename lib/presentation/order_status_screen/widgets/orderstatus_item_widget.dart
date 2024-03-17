import '../models/orderstatus_item_model.dart';
import '../controller/order_status_controller.dart';
import 'package:flutter/material.dart';
import 'package:almohsen_s_application15/core/app_export.dart';

// ignore: must_be_immutable
class OrderstatusItemWidget extends StatelessWidget {
  OrderstatusItemWidget(
    this.orderstatusItemModelObj, {
    Key? key,
  }) : super(
          key: key,
        );

  OrderstatusItemModel orderstatusItemModelObj;

  var controller = Get.find<OrderStatusController>();

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Obx(
          () => CustomImageView(
            imagePath: orderstatusItemModelObj.orderReceived!.value,
            height: 88.v,
            width: 8.h,
          ),
        ),
        Expanded(
          child: Padding(
            padding: EdgeInsets.only(
              left: 14.h,
              bottom: 42.v,
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Obx(
                  () => Text(
                    orderstatusItemModelObj.orderReceived1!.value,
                    style: CustomTextStyles.bodyLarge18,
                  ),
                ),
                Row(
                  children: [
                    CustomImageView(
                      imagePath: ImageConstant.imgCocoLineClock,
                      height: 16.adaptSize,
                      width: 16.adaptSize,
                      margin: EdgeInsets.only(bottom: 1.v),
                    ),
                    Padding(
                      padding: EdgeInsets.only(left: 4.h),
                      child: Obx(
                        () => Text(
                          orderstatusItemModelObj.time!.value,
                          style: theme.textTheme.labelLarge,
                        ),
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
      ],
    );
  }
}
