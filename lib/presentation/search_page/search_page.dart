import 'package:almohsen_s_application15/widgets/app_bar/custom_app_bar.dart';
import 'package:almohsen_s_application15/widgets/app_bar/appbar_subtitle_one.dart';
import 'package:almohsen_s_application15/widgets/custom_search_view.dart';
import 'widgets/recentsearchlist_item_widget.dart';
import 'models/recentsearchlist_item_model.dart';
import 'widgets/productlist2_item_widget.dart';
import 'models/productlist2_item_model.dart';
import 'package:flutter/material.dart' hide SearchController;
import 'package:almohsen_s_application15/core/app_export.dart';
import 'controller/search_controller.dart';
import 'models/search_model.dart';

class SearchPage extends StatelessWidget {
  SearchPage({Key? key})
      : super(
          key: key,
        );

  SearchController controller = Get.put(SearchController(SearchModel().obs));

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        resizeToAvoidBottomInset: false,
        appBar: _buildAppBar(),
        body: Container(
          width: double.maxFinite,
          padding: EdgeInsets.symmetric(vertical: 23.v),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Align(
                alignment: Alignment.center,
                child: Padding(
                  padding: EdgeInsets.symmetric(horizontal: 16.h),
                  child: CustomSearchView(
                    controller: controller.searchController,
                    hintText: "lbl_search".tr,
                    alignment: Alignment.center,
                  ),
                ),
              ),
              SizedBox(height: 23.v),
              Padding(
                padding: EdgeInsets.only(left: 16.h),
                child: Text(
                  "lbl_recent_search".tr,
                  style: theme.textTheme.titleMedium,
                ),
              ),
              SizedBox(height: 12.v),
              _buildRecentSearchList(),
              SizedBox(height: 25.v),
              Padding(
                padding: EdgeInsets.only(left: 16.h),
                child: Text(
                  "msg_items_that_you_may".tr,
                  style: theme.textTheme.titleMedium,
                ),
              ),
              SizedBox(height: 10.v),
              _buildProductList(),
            ],
          ),
        ),
      ),
    );
  }

  /// Section Widget
  PreferredSizeWidget _buildAppBar() {
    return CustomAppBar(
      centerTitle: true,
      title: AppbarSubtitleOne(
        text: "lbl_search".tr,
      ),
    );
  }

  /// Section Widget
  Widget _buildRecentSearchList() {
    return SizedBox(
      height: 58.v,
      child: Obx(
        () => ListView.separated(
          padding: EdgeInsets.only(left: 16.h),
          scrollDirection: Axis.horizontal,
          separatorBuilder: (
            context,
            index,
          ) {
            return SizedBox(
              width: 24.h,
            );
          },
          itemCount: controller
              .searchModelObj.value.recentsearchlistItemList.value.length,
          itemBuilder: (context, index) {
            RecentsearchlistItemModel model = controller
                .searchModelObj.value.recentsearchlistItemList.value[index];
            return RecentsearchlistItemWidget(
              model,
            );
          },
        ),
      ),
    );
  }

  /// Section Widget
  Widget _buildProductList() {
    return Align(
      alignment: Alignment.center,
      child: Padding(
        padding: EdgeInsets.symmetric(horizontal: 16.h),
        child: Obx(
          () => ListView.separated(
            physics: NeverScrollableScrollPhysics(),
            shrinkWrap: true,
            separatorBuilder: (
              context,
              index,
            ) {
              return SizedBox(
                height: 14.v,
              );
            },
            itemCount: controller
                .searchModelObj.value.productlist2ItemList.value.length,
            itemBuilder: (context, index) {
              Productlist2ItemModel model = controller
                  .searchModelObj.value.productlist2ItemList.value[index];
              return Productlist2ItemWidget(
                model,
              );
            },
          ),
        ),
      ),
    );
  }
}
