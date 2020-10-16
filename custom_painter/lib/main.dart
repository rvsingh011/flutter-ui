import 'package:flutter/material.dart';
import 'dart:math' as math;

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: Body(),
      ),
    );
  }
}

class Body extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: LayoutBuilder(
        builder: (_, constraints) {
          return Stack(
            children: [
              CustomPaint(
                painter: MyFacePainter(),
              ),
            ],
          );
        },
      ),
    );
  }
}

class MyFacePainter extends CustomPainter {
  double x = 200, y = 300, radius = 70;
  double total_expense = 0;
  Offset offset = Offset(100, 100);
  double startAngle = -math.pi * 0.5;

  void CalculateTotalExpense() {
    expense.forEach((element) {
      print("hello");
      this.total_expense += element['value'];
    });
    print(this.total_expense);
  }

  @override
  void paint(Canvas canvas, Size size) {
    final paint = Paint()
      ..style = PaintingStyle.stroke
      ..strokeWidth = 40;
    this.CalculateTotalExpense();

    expense.asMap().forEach((idx, element) {
      double sweepAngle = element['value'] / total_expense * 2 * math.pi;
      ;
      paint.color = paint.color = colors[idx];
      canvas.drawArc(Rect.fromCircle(center: offset, radius: radius),
          startAngle, sweepAngle, false, paint);
      startAngle += sweepAngle;
    });

    // canvas.drawCircle(Offset(x, y), radius, paint);
    // canvas.drawArc(Rect.fromCircle(center: Offset(200, 200), radius: 100), 0,
    //     math.pi * 0.5, false, paint);
    // paint.color = Colors.blue;
    // canvas.drawArc(Rect.fromCircle(center: Offset(200, 200), radius: 100),
    //     math.pi * 0.5, math.pi * 0.5, false, paint);
  }

  @override
  bool shouldRepaint(MyFacePainter oldDelegate) => true;
}

List<Color> colors = [
  Colors.blue,
  Colors.red,
  Colors.black,
  Colors.purple,
  Colors.amber
];

List<Map> expense = [
  {"key": "Grocery Shooping", "value": 600},
  {"key": "Grocery Shooping", "value": 200},
  {"key": "Grocery Shooping", "value": 100},
  {"key": "Grocery Shooping", "value": 50},
  {"key": "Grocery Shooping", "value": 50},
];
