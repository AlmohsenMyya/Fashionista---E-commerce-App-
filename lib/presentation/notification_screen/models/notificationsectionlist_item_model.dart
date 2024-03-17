import '../../../core/app_export.dart';

/// This class is used in the [notificationsectionlist_item_widget] screen.
class NotificationsectionlistItemModel {
  NotificationsectionlistItemModel({
    this.groupBy,
    this.id,
  }) {
    groupBy = groupBy ?? Rx("");
    id = id ?? Rx("");
  }

  Rx<String>? groupBy;

  Rx<String>? id;
}
