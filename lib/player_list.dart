import 'package:dream_11_ui_copy/player_info.dart';
import 'package:dream_11_ui_copy/select_limit_desc.dart';
import 'package:flutter/material.dart';

class PlayerList extends StatelessWidget {
  const PlayerList({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          color: Colors.grey.withOpacity(0.1),
          padding: const EdgeInsets.all(8.0),
          child: SelectLimitDesc(),
        ),
        Expanded(
          child: ListView(
            children: [
              PlayerInfo(
                icon: "images/red_players/red_1.png",
                name: "R Sharma",
                percentage: "54.75%",
                points: 1185,
                credit: 11.5,
              ),
              PlayerInfo(
                icon: "images/red_players/red-2.png",
                name: "A Rahane",
                percentage: "44.25%",
                points: 356,
                credit: 11,
              ),
              PlayerInfo(
                icon: "images/red_players/red-3.png",
                name: "H Pandya",
                percentage: "34.75%",
                points: 356,
                credit: 10,
              ),
              PlayerInfo(
                icon: "images/red_players/red-4.png",
                name: "S Dhawan",
                percentage: "28.15%",
                points: 356,
                credit: 10,
              ),
            ],
          ),
        )
      ],
    );
  }
}
