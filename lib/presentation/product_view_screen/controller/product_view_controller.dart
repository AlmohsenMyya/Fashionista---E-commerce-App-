import '../../../core/app_export.dart';
import '../models/product_view_model.dart';

/// A controller class for the ProductViewScreen.
///
/// This class manages the state of the ProductViewScreen, including the
/// current productViewModelObj
class ProductViewController extends GetxController {
  Rx<ProductViewModel> productViewModelObj = ProductViewModel().obs;
}
