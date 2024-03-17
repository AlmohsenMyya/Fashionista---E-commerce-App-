import '../../../core/app_export.dart';
import '../models/my_cart_model.dart';

/// A controller class for the MyCartPage.
///
/// This class manages the state of the MyCartPage, including the
/// current myCartModelObj
class MyCartController extends GetxController {
  MyCartController(this.myCartModelObj);

  Rx<MyCartModel> myCartModelObj;
}
