import '../../../core/app_export.dart';
import '../models/onbording_one_model.dart';

/// A controller class for the OnbordingOneScreen.
///
/// This class manages the state of the OnbordingOneScreen, including the
/// current onbordingOneModelObj
class OnbordingOneController extends GetxController {
  Rx<OnbordingOneModel> onbordingOneModelObj = OnbordingOneModel().obs;
}
