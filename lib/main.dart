import 'package:ayaproject/view/user.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const App());
}

class App extends StatelessWidget {
  const App({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: User(),
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