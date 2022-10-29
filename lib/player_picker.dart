import 'package:dream_11_ui_copy/player_list.dart';
import 'package:flutter/material.dart';

class PlayerPicker extends StatefulWidget {
  const PlayerPicker({Key? key}) : super(key: key);

  @override
  _PlayerPickerState createState() => _PlayerPickerState();
}

class _PlayerPickerState extends State<PlayerPicker>
    with SingleTickerProviderStateMixin {
  late TabController _tabController;

  @override
  void initState() {
    super.initState();
    _tabController = TabController(length: 4, vsync: this);
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white,
      child: Column(
        children: [
          Container(
            height: 50,
            decoration: BoxDecoration(
              color: Colors.white,
              boxShadow: [
                BoxShadow(
                  color: Colors.grey.withOpacity(0.5),
                  spreadRadius: 2,
                  blurRadius: 7,
                  offset: Offset(0, 3),
                ),
              ],
            ),
            child: TabBar(
              indicator: UnderlineTabIndicator(
                borderSide: BorderSide(
                  width: 5,
                  color: Colors.redAccent,
                ),
              ),
              controller: _tabController,
              tabs: [
                Text(
                  "WK(1)",
                  style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 15,
                      color: Colors.black54),
                ),
                Text(
                  "BAT(3)",
                  style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 15,
                      color: Colors.black54),
                ),
                Text(
                  "AR(3)",
                  style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 15,
                      color: Colors.black54),
                ),
                Text(
                  "BOWL(4)",
                  style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 15,
                      color: Colors.black54),
                ),
              ],
            ),
          ),
          Expanded(
            child: Container(
              child: TabBarView(
                controller: _tabController,
                children: [
                  PlayerList(),
                  PlayerList(),
                  PlayerList(),
                  PlayerList(),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
