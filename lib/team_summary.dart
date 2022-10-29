import 'package:dream_11_ui_copy/credit_info.dart';
import 'package:dream_11_ui_copy/dc_info.dart';
import 'package:dream_11_ui_copy/mi_info.dart';
import 'package:dream_11_ui_copy/player_budget_bar.dart';
import 'package:dream_11_ui_copy/player_count.dart';
import 'package:flutter/material.dart';

class TeamSummary extends StatelessWidget {
  const TeamSummary({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 170,
      child: Column(
        children: [
          Text(
            "You can select only 7 from each team",
            style: TextStyle(fontSize: 15),
          ),
          Container(
            margin: EdgeInsets.all(15),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                PlayerCount(),
                MiInfo(),
                DcInfo(),
                CreditInfo(),
              ],
            ),
          ),
          Container(
            margin: EdgeInsets.symmetric(horizontal: 10, vertical: 5),
            child: Row(
              children: [
                Expanded(
                  child: PlayerBudgetBar(),
                ),
                Icon(
                  Icons.remove_circle_outline_outlined,
                  size: 40,
                  color: Colors.orange,
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
