import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'data.dart';
import 'dart:math' as math;

class PieChart extends StatelessWidget {
  const PieChart({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (context, constraints) => Container(
        padding:
            EdgeInsets.only(bottom: MediaQuery.of(context).size.height * 0.06),
        child: Stack(
          children: [
            Container(
              decoration: BoxDecoration(
                shape: BoxShape.circle,
                color: Appcolors.primaryWhite,
                boxShadow: [
                  BoxShadow(
                    color: Colors.grey[800],
                    offset: Offset(8, 2),
                    blurRadius: 10,
                  ),
                ],
              ),
            ),
            Center(
              child: CustomPaint(
                foregroundPainter: ExpensePieChart(),
              ),
            ),
            Center(
              child: Container(
                width: 100,
                decoration: BoxDecoration(boxShadow: [
                  BoxShadow(
                      color: Colors.black.withOpacity(0.5),
                      offset: Offset(4, 2),
                      blurRadius: 2,
                      spreadRadius: 1),
                  BoxShadow(
                    color: Colors.white,
                    offset: Offset(-1, -1),
                    blurRadius: 1,
                    spreadRadius: 1,
                  ),
                ], shape: BoxShape.circle, color: Appcolors.primaryWhite),
              ),
            ),
            Center(
                child: Text(
              "\$3500",
              style: TextStyle(
                  fontSize: 20,
                  color: Colors.black.withOpacity(0.7),
                  fontWeight: FontWeight.bold,
                  fontFamily: 'AvenirNext'),
            )),
          ],
        ),
      ),
    );
  }
}

class ExpensePieChart extends CustomPainter {
  BoxConstraints constraints;
  double startAngle = -math.pi * .5;
  double sweepAngle;
  double totalExpense = Data().getTotalExpense();

  caluclateSweepAngle(amount) {
    print('hello');
    // print(((((amount * 100) / totalExpense)) * 2 * math.pi) / 100);
    return ((amount / totalExpense) * 2 * math.pi);
    // return math.pi;
  }

  var paintObject = Paint()
    ..color = Colors.amber
    ..strokeWidth = 20;

  @override
  void paint(Canvas canvas, Size size) {
    Data().data.forEach((element) {
      paintObject.color = element['Color'];
      sweepAngle = caluclateSweepAngle(element['amount']);
      canvas.drawArc(Rect.fromCircle(center: Offset(0, 0), radius: 100),
          startAngle, sweepAngle, true, paintObject);
      startAngle += sweepAngle;
    });
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) => true;
}

class ExpenseList extends StatelessWidget {
  const ExpenseList({
    Key key,
    @required this.data,
  }) : super(key: key);

  final List<Map<String, Object>> data;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Expanded(
          child: ListView.separated(
              separatorBuilder: (context, index) {
                return SizedBox(
                  height: 10,
                );
              },
              shrinkWrap: true,
              physics: NeverScrollableScrollPhysics(),
              itemCount: data.length,
              itemBuilder: (context, index) {
                return Container(
                  color: Appcolors.primaryWhite,
                  child: Row(
                    children: [
                      Container(
                        height: 20,
                        width: 20,
                        decoration: BoxDecoration(
                            shape: BoxShape.circle,
                            color: data[index]['Color']),
                      ),
                      SizedBox(width: 10),
                      Flexible(
                        child: Text(
                          data[index]['text'],
                          style: TextStyle(fontSize: 20),
                        ),
                      ),
                    ],
                  ),
                );
              }),
        ),
      ],
    );
  }
}

class Footer extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final data = Data().data;
    return Expanded(
      flex: 5,
      child: Column(
        children: [
          Flexible(flex: 1, child: ExpenseBar()),
          Flexible(flex: 6, child: Expense(data: data))
        ],
      ),
    );
  }
}

class Expense extends StatelessWidget {
  const Expense({
    Key key,
    @required this.data,
  }) : super(key: key);

  final List<Map<String, Object>> data;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(20),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Expanded(
            flex: 4,
            child: ExpenseList(data: data),
          ),
          Expanded(
            child: PieChart(),
            flex: 6,
          ),
        ],
      ),
    );
  }
}

class ExpenseBar extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.only(left: 20, right: 20, top: 10, bottom: 10),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Flexible(
            flex: 5,
            child: Text(
              "Expenses",
              style: TextStyle(fontSize: 20),
            ),
          ),
          Flexible(
            flex: 9,
            child: Center(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Container(
                    decoration: BoxDecoration(
                      color: Appcolors.primaryWhite,
                      shape: BoxShape.rectangle,
                      boxShadow: [
                        BoxShadow(
                            color: Colors.grey[700],
                            offset: Offset(5, 5),
                            blurRadius: 10),
                      ],
                    ),
                    child: Center(
                      child: IconButton(
                          iconSize: MediaQuery.of(context).size.height * 0.02,
                          icon: Icon(
                            Icons.arrow_back_ios_outlined,
                            color: Colors.black,
                          ),
                          onPressed: null),
                    ),
                  ),
                  SizedBox(
                    width: 20,
                  ),
                  Container(
                    decoration: BoxDecoration(
                      color: Appcolors.primaryWhite,
                      shape: BoxShape.rectangle,
                      boxShadow: [
                        BoxShadow(
                            color: Colors.grey[700],
                            offset: Offset(5, 5),
                            blurRadius: 10),
                      ],
                    ),
                    child: Center(
                      child: IconButton(
                          iconSize: MediaQuery.of(context).size.height * 0.02,
                          icon: Icon(
                            Icons.arrow_forward_ios_outlined,
                            color: Colors.black,
                          ),
                          onPressed: null),
                    ),
                  )
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}
