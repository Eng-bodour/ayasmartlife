import 'package:get/get.dart';

import '../view model/all_user_view_model.dart';
import '../view model/user_view_model.dart';

class UserBinding extends Bindings {
  @override
  void dependencies() {
    Get.put(AllUserVMController());
    Get.put(UserVMController());
  }
}
