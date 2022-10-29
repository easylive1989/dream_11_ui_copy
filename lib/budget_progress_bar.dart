import 'package:flutter/material.dart';

class BudgetProgressBar extends CustomPainter {
  @override
  void paint(Canvas canvas, Size size) {
    var paint = Paint();

    paint
      ..color = Colors.green
      ..strokeWidth = 1.0
      ..style = PaintingStyle.fill;

    canvas.drawPath(drawParallelogram(size.width - 10, size.height), paint);

    paint
      ..color = Colors.black
      ..strokeWidth = 1.0
      ..style = PaintingStyle.stroke;

    var percentage = (size.width - 20) / 10.0;
    List.generate(10, (index) => index + 1).forEach(
      (number) {
        print("x: ${percentage * number}");
        canvas.drawPath(drawPortion(percentage * number, size.height), paint);
      },
    );
  }

  Path drawParallelogram(double x, double y) {
    return Path()
      ..moveTo(0, y)
      ..lineTo(x - 10, y)
      ..lineTo(x, 0)
      ..lineTo(10, 0)
      ..lineTo(0, y);
  }

  Path drawPortion(double x, double y) {
    return Path()
      ..moveTo(0, y)
      ..lineTo(x, y)
      ..lineTo(x + 10, 0)
      ..lineTo(10, 0)
      ..lineTo(0, y);
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) {
    return true;
  }
}
