import 'package:ayaproject/routes/routes.dart';

import 'package:flutter/material.dart';
import 'package:get/get.dart';

void main() {
  runApp(const App());
}

class App extends StatelessWidget {
  const App({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      //  home: AllUserScreen(),
      initialRoute: AppRoutes.allUser,
      getPages: AppRoutes.routes,
    );
  }
}

//  FutureBuilder<List<UserModel>>(
//           future: GetUserServices().usersServices(),
//           builder: (context, snapshot) {
//             if (snapshot.hasData) {
//               return Text('hello', style: TextStyle(color: Colors.black));
//             } else {
//               return Center(child: CircularProgressIndicator());
//             }
//           }),