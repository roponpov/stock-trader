import 'package:get/get.dart';
import '../../viewmodels/sign_in_view_model.dart';
import '../../viewmodels/sign_up_view_model.dart';

class SignInBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<SignInViewModel>(() => SignInViewModel());
  }
}