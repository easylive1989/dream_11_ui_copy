import 'package:dream_11_ui_copy/budget_progress_bar.dart';
import 'package:flutter/material.dart';

class PlayerBudgetBar extends StatelessWidget {
  const PlayerBudgetBar({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Stack(
      alignment: Alignment.centerRight,
      children: [
        LayoutBuilder(builder: (context, constraints) {
          return CustomPaint(
            size: Size(constraints.maxWidth, 25),
            painter: BudgetProgressBar(),
          );
        }),
        Padding(
          padding: const EdgeInsets.only(right: 25.0),
          child: Text("11"),
        ),
      ],
    );
  }
}
