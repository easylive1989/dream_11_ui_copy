import 'package:flutter/material.dart';

class DcInfo extends StatelessWidget {
  const DcInfo({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Column(
          children: [
            Text(
              "DC",
              style: TextStyle(
                color: Colors.grey,
              ),
            ),
            SizedBox(
              height: 5,
            ),
            Text(
              "5",
              style: TextStyle(
                fontWeight: FontWeight.bold,
              ),
            )
          ],
        ),
        SizedBox(
          width: 10,
        ),
        Image.asset(
          "images/blue.png",
          width: 60,
          height: 60,
        ),
      ],
    );
  }
}
