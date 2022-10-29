import 'package:flutter/material.dart';

class CreditInfo extends StatelessWidget {
  const CreditInfo({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Text(
          "Credits Left",
          style: TextStyle(
            color: Colors.grey,
          ),
        ),
        SizedBox(
          height: 5,
        ),
        Text(
          "0.5",
          style: TextStyle(
            fontSize: 25,
            fontWeight: FontWeight.bold,
          ),
        ),
      ],
    );
  }
}
