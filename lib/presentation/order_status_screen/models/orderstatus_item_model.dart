import '../../../core/app_export.dart';

/// This class is used in the [orderstatus_item_widget] screen.
class OrderstatusItemModel {
  OrderstatusItemModel({
    this.orderReceived,
    this.orderReceived1,
    this.time,
    this.id,
  }) {
    orderReceived = orderReceived ?? Rx(ImageConstant.imgSettings);
    orderReceived1 = orderReceived1 ?? Rx("Order Received");
    time = time ?? Rx("05:48 PM, 7 June 2021");
    id = id ?? Rx("");
  }

  Rx<String>? orderReceived;

  Rx<String>? orderReceived1;

  Rx<String>? time;

  Rx<String>? id;
}
