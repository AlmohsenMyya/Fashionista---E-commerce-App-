import '../../../core/app_export.dart';
import '../models/tracking_order_model.dart';

/// A controller class for the TrackingOrderScreen.
///
/// This class manages the state of the TrackingOrderScreen, including the
/// current trackingOrderModelObj
class TrackingOrderController extends GetxController {
  Rx<TrackingOrderModel> trackingOrderModelObj = TrackingOrderModel().obs;
}
