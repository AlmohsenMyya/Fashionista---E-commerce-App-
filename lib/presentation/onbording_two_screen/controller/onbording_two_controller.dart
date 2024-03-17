import '../../../core/app_export.dart';
import '../models/onbording_two_model.dart';

/// A controller class for the OnbordingTwoScreen.
///
/// This class manages the state of the OnbordingTwoScreen, including the
/// current onbordingTwoModelObj
class OnbordingTwoController extends GetxController {
  Rx<OnbordingTwoModel> onbordingTwoModelObj = OnbordingTwoModel().obs;
}
