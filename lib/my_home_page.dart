import 'package:dream_11_ui_copy/player_picker.dart';
import 'package:dream_11_ui_copy/team_summary.dart';
import 'package:flutter/material.dart';

class MyHomePage extends StatelessWidget {
  final int abc = 1;
  MyHomePage({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xff343134),
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.transparent,
        title: Center(
          child: Text(
            "29m 30s left",
            style: TextStyle(
              fontWeight: FontWeight.bold,
              fontSize: 20,
            ),
          ),
        ),
      ),
      body: Column(
        children: [
          TeamSummary(),
          Expanded(
            child: PlayerPicker(),
          ),
        ],
      ),
    );
  }
}
