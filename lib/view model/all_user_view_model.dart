import 'package:ayaproject/models/user/user_model.dart';
import 'package:ayaproject/services/userServices/get_user_services.dart';
import 'package:get/get.dart';

class AllUserVMController extends GetxController {
  var usersList = <UserModel>[].obs;
  var isLoading = true.obs;
  @override
  void onInit() {
    super.onInit();
    getUsers();
  }

  void getUsers() async {
    var users = await GetUserServices().usersServices();
    try {
      isLoading(true);
      if (users.isNotEmpty) {
        usersList.addAll(users);
      }
    } finally {
      isLoading(false);
    }
  }
}
