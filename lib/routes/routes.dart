import 'package:ayaproject/binding/binding.dart';
import 'package:ayaproject/view/all_user.dart';

import 'package:get/get.dart';

class AppRoutes {
  static const allUser = Routes.allUserScreen;

  static final routes = [
    GetPage(
      name: Routes.allUserScreen,
      page: () => AllUserScreen(),
      bindings: [
        UserBinding(),
      ],
    ),
  ];
}

class Routes {
  static const allUserScreen = '/allUserScreen';
  static const userScreen = '/userScreen';
}
