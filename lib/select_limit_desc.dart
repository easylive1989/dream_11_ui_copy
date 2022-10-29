import 'package:flutter/material.dart';

class SelectLimitDesc extends StatelessWidget {
  const SelectLimitDesc({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.end,
      children: [
        Expanded(
          child: Text(
            "Select 3 - 6 Batsmen",
            style: TextStyle(
              color: Colors.black54,
              fontSize: 20,
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
        Icon(
          Icons.filter_list,
          size: 25,
        )
      ],
    );
  }
}
