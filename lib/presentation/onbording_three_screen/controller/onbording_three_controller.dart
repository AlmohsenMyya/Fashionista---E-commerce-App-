import '../../../core/app_export.dart';
import '../models/onbording_three_model.dart';

/// A controller class for the OnbordingThreeScreen.
///
/// This class manages the state of the OnbordingThreeScreen, including the
/// current onbordingThreeModelObj
class OnbordingThreeController extends GetxController {
  Rx<OnbordingThreeModel> onbordingThreeModelObj = OnbordingThreeModel().obs;
}
