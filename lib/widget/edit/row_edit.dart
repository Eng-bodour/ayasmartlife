import 'package:flutter/material.dart';

import '../widgetUser/test_utilis.dart';

class RowEdit extends StatelessWidget {
  final String name;
  final String des;
  const RowEdit({required this.name, required this.des, Key? key})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        TextUtilis(
          color: Colors.black,
          fontSize: 35,
          fontWeight: FontWeight.bold,
          textstring: name,
          underline: TextDecoration.none,
        ),
        TextUtilis(
          color: Colors.black38,
          fontSize: 35,
          fontWeight: FontWeight.normal,
          textstring: des,
          underline: TextDecoration.none,
        ),
      ],
    );
  }
}
