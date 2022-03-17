import 'package:ayaproject/widget/widgetUser/card_users.dart';
import 'package:flutter/material.dart';

class AllUserScreen extends StatelessWidget {
  const AllUserScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('All User'),
        centerTitle: true,
      ),
      body: Column(
        
        children: [
          const SizedBox(
            height: 20,
          ),
          CardUsers(),
        ],
      ),
    );
  }
}
