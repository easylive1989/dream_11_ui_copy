import 'package:flutter/material.dart';

class MiInfo extends StatelessWidget {
  const MiInfo({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Image.asset(
          "images/red.png",
          width: 60,
          height: 60,
        ),
        SizedBox(
          width: 10,
        ),
        Column(
          children: [
            Text(
              "MI",
              style: TextStyle(
                color: Colors.grey,
              ),
            ),
            SizedBox(
              height: 5,
            ),
            Text(
              "6",
              style: TextStyle(
                fontWeight: FontWeight.bold,
              ),
            )
          ],
        )
      ],
    );
  }
}
