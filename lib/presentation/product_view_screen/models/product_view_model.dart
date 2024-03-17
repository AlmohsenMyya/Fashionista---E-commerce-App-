import 'sizechipview_item_model.dart';
import '../../../core/app_export.dart';

/// This class defines the variables used in the [product_view_screen],
/// and is typically used to hold data that is passed between different parts of the application.
class ProductViewModel {
  Rx<List<SizechipviewItemModel>> sizechipviewItemList =
      Rx(List.generate(5, (index) => SizechipviewItemModel()));
}
