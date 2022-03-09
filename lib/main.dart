import 'package:ayaproject/api/api.dart';
import 'package:ayaproject/models/client/client_model.dart';
import 'package:ayaproject/services/clientServices/get_client_services.dart';
import 'package:ayaproject/services/userServices/get_user_services.dart';
import 'package:flutter/material.dart';

import 'models/user/user_model.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'aya projext',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const MyHomePage(title: 'Aya Project'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key, required this.title}) : super(key: key);
  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: FutureBuilder<List<UserModel>>(
          future: GetUserServices().usersServices(),
          builder: (context, snapshot) {
            if (snapshot.hasData) {
              return Text('hello', style: TextStyle(color: Colors.black));
            } else {
              return Center(child: CircularProgressIndicator());
            }
          }),
    );
  }
}
