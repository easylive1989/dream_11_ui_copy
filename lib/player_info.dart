import 'package:flutter/material.dart';

class PlayerInfo extends StatelessWidget {
  final String icon;
  final String name;
  final String percentage;
  final int points;
  final double credit;

  const PlayerInfo({
    Key? key,
    required this.icon,
    required this.name,
    required this.percentage,
    required this.points,
    required this.credit,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 100,
      padding: EdgeInsets.all(10),
      child: Row(
        children: [
          Container(
            margin: EdgeInsets.only(right: 10),
            child: Image.asset(
              icon,
              width: 75,
              height: 75,
            ),
          ),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  name,
                  style: TextStyle(
                    color: Colors.black54,
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                SizedBox(
                  height: 5,
                ),
                Text(
                  percentage,
                  style: TextStyle(color: Colors.grey),
                ),
              ],
            ),
          ),
          Text(
            points.toString(),
            style: TextStyle(color: Colors.grey, fontWeight: FontWeight.bold),
          ),
          SizedBox(
            width: 20,
          ),
          Text(
            credit.toString(),
            style:
                TextStyle(color: Colors.black54, fontWeight: FontWeight.bold),
          ),
          SizedBox(
            width: 20,
          ),
          Icon(
            Icons.add_circle_outline_outlined,
            color: Colors.green,
            size: 25,
          ),
        ],
      ),
    );
  }
}
