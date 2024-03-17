import 'package:almohsen_s_application15/presentation/order_status_screen/controller/order_status_controller.dart';
import 'package:get/get.dart';

/// A binding class for the OrderStatusScreen.
///
/// This class ensures that the OrderStatusController is created when the
/// OrderStatusScreen is first loaded.
class OrderStatusBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => OrderStatusController());
  }
}
