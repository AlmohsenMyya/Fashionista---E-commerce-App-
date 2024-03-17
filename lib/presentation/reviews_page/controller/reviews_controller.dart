import '../../../core/app_export.dart';
import '../models/reviews_model.dart';

/// A controller class for the ReviewsPage.
///
/// This class manages the state of the ReviewsPage, including the
/// current reviewsModelObj
class ReviewsController extends GetxController {
  ReviewsController(this.reviewsModelObj);

  Rx<ReviewsModel> reviewsModelObj;
}
