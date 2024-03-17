import 'package:almohsen_s_application15/widgets/app_bar/custom_app_bar.dart';
import 'package:almohsen_s_application15/widgets/app_bar/appbar_leading_iconbutton_one.dart';
import 'package:almohsen_s_application15/widgets/app_bar/appbar_subtitle_one.dart';
import 'package:grouped_list/grouped_list.dart';
import 'models/notificationsectionlist_item_model.dart';
import '../notification_screen/widgets/notificationsectionlist_item_widget.dart';
import 'package:flutter/material.dart';
import 'package:almohsen_s_application15/core/app_export.dart';
import 'controller/notification_controller.dart';

class NotificationScreen extends GetWidget<NotificationController> {
  const NotificationScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
            appBar: _buildAppBar(),
            body: Padding(
                padding: EdgeInsets.fromLTRB(16.h, 25.v, 16.h, 5.v),
                child: Obx(() =>
                    GroupedListView<NotificationsectionlistItemModel, String>(
                        shrinkWrap: true,
                        stickyHeaderBackgroundColor: Colors.transparent,
                        elements: controller.notificationModelObj.value
                            .notificationsectionlistItemList.value,
                        groupBy: (element) => element.groupBy!.value,
                        sort: false,
                        groupSeparatorBuilder: (String value) {
                          return Padding(
                              padding: EdgeInsets.only(top: 25.v, bottom: 12.v),
                              child: Column(children: [
                                Text(value,
                                    style: theme.textTheme.titleMedium!
                                        .copyWith(
                                            color: theme.colorScheme.primary))
                              ]));
                        },
                        itemBuilder: (context, model) {
                          return NotificationsectionlistItemWidget(model);
                        },
                        separator: SizedBox(height: 16.v))))));
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
        title: AppbarSubtitleOne(text: "lbl_notifications".tr));
  }

  /// Navigates to the previous screen.
  onTapArrowDown() {
    Get.back();
  }
}
