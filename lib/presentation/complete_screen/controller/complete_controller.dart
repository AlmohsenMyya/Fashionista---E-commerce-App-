import '../../../core/app_export.dart';
import '../models/complete_model.dart';

/// A controller class for the CompleteScreen.
///
/// This class manages the state of the CompleteScreen, including the
/// current completeModelObj
class CompleteController extends GetxController {
  Rx<CompleteModel> completeModelObj = CompleteModel().obs;
}
