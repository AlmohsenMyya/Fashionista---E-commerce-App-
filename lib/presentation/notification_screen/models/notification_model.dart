import 'notificationsectionlist_item_model.dart';
import '../../../core/app_export.dart';

/// This class defines the variables used in the [notification_screen],
/// and is typically used to hold data that is passed between different parts of the application.
class NotificationModel {
  Rx<List<NotificationsectionlistItemModel>> notificationsectionlistItemList =
      Rx([
    NotificationsectionlistItemModel(groupBy: "Today".obs),
    NotificationsectionlistItemModel(groupBy: "Today".obs),
    NotificationsectionlistItemModel(groupBy: "Today".obs),
    NotificationsectionlistItemModel(groupBy: "Yesterday".obs),
    NotificationsectionlistItemModel(groupBy: "Yesterday".obs),
    NotificationsectionlistItemModel(groupBy: "Yesterday".obs)
  ]);
}
