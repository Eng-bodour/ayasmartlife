import 'package:ayaproject/widget/widgetUser/test_utilis.dart';
import 'package:flutter/material.dart';

class RowWidget extends StatelessWidget {
  final String name;
  final String des;
  const RowWidget({required this.name, required this.des, Key? key})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
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
              color: Colors.black,
              fontSize: 35,
              fontWeight: FontWeight.bold,
              textstring: des,
              underline: TextDecoration.none,
            ),
          ],
        ),
        const Divider(
          color: Colors.grey,
          thickness: 2,
        ),
      ],
    );
  }
}
