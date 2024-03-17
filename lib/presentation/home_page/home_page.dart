import 'widgets/productlist_item_widget.dart';
import 'models/productlist_item_model.dart';
import 'widgets/productlist1_item_widget.dart';
import 'models/productlist1_item_model.dart';
import 'package:flutter/material.dart';
import 'package:almohsen_s_application15/core/app_export.dart';
import 'controller/home_controller.dart';
import 'models/home_model.dart';

// ignore_for_file: must_be_immutable
class HomePage extends StatelessWidget {
  HomePage({Key? key}) : super(key: key);

  HomeController controller = Get.put(HomeController(HomeModel().obs));

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
            body: SizedBox(
                width: SizeUtils.width,
                child: SingleChildScrollView(
                    child: Column(children: [
                  SizedBox(height: 32.v),
                  Padding(
                      padding: EdgeInsets.only(left: 16.h),
                      child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            _buildProductList(),
                            SizedBox(height: 34.v),
                            _buildPopularItems(),
                            SizedBox(height: 13.v),
                            _buildProductList1()
                          ]))
                ])))));
  }

  /// Section Widget
  Widget _buildProductList() {
    return SizedBox(
        height: 292.v,
        child: Obx(() => ListView.separated(
            scrollDirection: Axis.horizontal,
            separatorBuilder: (context, index) {
              return SizedBox(width: 15.h);
            },
            itemCount:
                controller.homeModelObj.value.productlistItemList.value.length,
            itemBuilder: (context, index) {
              ProductlistItemModel model = controller
                  .homeModelObj.value.productlistItemList.value[index];
              return ProductlistItemWidget(model, onTapCard: () {
                onTapCard();
              });
            })));
  }

  /// Section Widget
  Widget _buildPopularItems() {
    return Padding(
        padding: EdgeInsets.only(right: 18.h),
        child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text("lbl_populer_items".tr, style: theme.textTheme.titleMedium),
              GestureDetector(
                  onTap: () {
                    onTapTxtSeeAll();
                  },
                  child: Padding(
                      padding: EdgeInsets.only(bottom: 5.v),
                      child: Text("lbl_see_all".tr,
                          style: CustomTextStyles.titleSmallOrange700)))
            ]));
  }

  /// Section Widget
  Widget _buildProductList1() {
    return SizedBox(
        height: 292.v,
        child: Obx(() => ListView.separated(
            scrollDirection: Axis.horizontal,
            separatorBuilder: (context, index) {
              return SizedBox(width: 15.h);
            },
            itemCount:
                controller.homeModelObj.value.productlist1ItemList.value.length,
            itemBuilder: (context, index) {
              Productlist1ItemModel model = controller
                  .homeModelObj.value.productlist1ItemList.value[index];
              return Productlist1ItemWidget(model, onTapCard: () {
                onTapCard();
              });
            })));
  }

  /// Navigates to the productViewScreen when the action is triggered.
  onTapCard() {
    Get.toNamed(
      AppRoutes.productViewScreen,
    );
  }

  /// Navigates to the popularItemsScreen when the action is triggered.
  onTapTxtSeeAll() {
    Get.toNamed(
      AppRoutes.popularItemsScreen,
    );
  }
}
