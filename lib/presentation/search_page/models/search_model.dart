import '../../../core/app_export.dart';
import 'recentsearchlist_item_model.dart';
import 'productlist2_item_model.dart';

/// This class defines the variables used in the [search_page],
/// and is typically used to hold data that is passed between different parts of the application.
class SearchModel {
  Rx<List<RecentsearchlistItemModel>> recentsearchlistItemList = Rx([
    RecentsearchlistItemModel(
        unsplashQnUURoX: ImageConstant.imgUnsplashQnuUr0o5x8.obs),
    RecentsearchlistItemModel(
        unsplashQnUURoX: ImageConstant.imgUnsplashQnuUr0o5x858x58.obs),
    RecentsearchlistItemModel(
        unsplashQnUURoX: ImageConstant.imgUnsplashQnuUr0o5x81.obs),
    RecentsearchlistItemModel(
        unsplashQnUURoX: ImageConstant.imgUnsplashQnuUr0o5x82.obs),
    RecentsearchlistItemModel(
        unsplashQnUURoX: ImageConstant.imgUnsplashQnuUr0o5x83.obs)
  ]);

  Rx<List<Productlist2ItemModel>> productlist2ItemList = Rx([
    Productlist2ItemModel(
        premiumWatch: ImageConstant.imgUnsplashJj0tls2rod4.obs,
        premiumWatch1: "Premium Watch".obs),
    Productlist2ItemModel(
        premiumWatch: ImageConstant.imgUnsplashJj0tls2rod458x58.obs,
        premiumWatch1: "Blue shoes".obs),
    Productlist2ItemModel(
        premiumWatch: ImageConstant.imgUnsplashJj0tls2rod41.obs,
        premiumWatch1: "Jamdan Dress".obs)
  ]);
}
