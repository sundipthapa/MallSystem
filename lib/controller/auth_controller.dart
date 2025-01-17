import 'package:get/get.dart';

import '../helper/firebase_helper.dart';
import '../model/FireUser.dart';
import '../screens/admin_screen.dart';
import '../screens/main_screen.dart';
import 'base_controller.dart';

class AuthController extends BaseController {
  final _fireHelper = FireBaseHelper();

  var currentUser = FireUser().obs;

  userSignIn(String email, String password) async {
    isLoading.value = true;
    fireResponse.value =
        await _fireHelper.signInWithEmailAndPassword(email, password);
    if (fireResponse.value.status == "OK") {
      currentUser.value = fireResponse.value.data;
      showSnackBar();
      Get.off(() => const AdminScreen());
    } else {
      showSnackBar();
    }
    isLoading.value = false;
  }

  adminUpdatePassword(String email, String oldPass, String newPass) async {
    isLoading.value = true;
    fireResponse.value =
        await _fireHelper.updatePassword(email, oldPass, newPass);
    showSnackBar();
    isLoading.value = false;
  }

  adminLogout() {
    _fireHelper.signOut();
    Get.offAll(() => const MainScreen());
  }
}
