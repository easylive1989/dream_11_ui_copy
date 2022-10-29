import 'package:flutter/material.dart';

class PlayerCount extends StatelessWidget {
  const PlayerCount({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Text(
          "Players",
          style: TextStyle(
            color: Colors.grey,
          ),
        ),
        SizedBox(
          height: 5,
        ),
        RichText(
          text: TextSpan(
            children: [
              TextSpan(
                text: "11",
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 25,
                ),
              ),
              TextSpan(
                text: "/11",
                style: TextStyle(color: Colors.grey),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
