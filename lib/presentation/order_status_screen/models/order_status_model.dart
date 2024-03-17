import 'slider_item_model.dart';
import '../../../core/app_export.dart';
import 'orderstatus_item_model.dart';

/// This class defines the variables used in the [order_status_screen],
/// and is typically used to hold data that is passed between different parts of the application.
class OrderStatusModel {
  Rx<List<SliderItemModel>> sliderItemList =
      Rx(List.generate(1, (index) => SliderItemModel()));

  Rx<List<OrderstatusItemModel>> orderstatusItemList = Rx([
    OrderstatusItemModel(
        orderReceived: ImageConstant.imgSettings.obs,
        orderReceived1: "Order Received".obs,
        time: "05:48 PM, 7 June 2021".obs),
    OrderstatusItemModel(
        orderReceived: ImageConstant.imgSettings.obs,
        orderReceived1: "On The Way".obs,
        time: "05:55 PM, 7 June 2021".obs),
    OrderstatusItemModel(
        orderReceived: ImageConstant.imgUserLime900.obs,
        orderReceived1: "Delivered".obs,
        time: "Finish Time In 25 Min".obs)
  ]);
}
