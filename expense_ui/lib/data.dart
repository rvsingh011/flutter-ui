import 'package:flutter/material.dart';

class Appcolors {
  static Color primaryWhite = Color(0xFFCADCED);
}

class Data {
  var data = [
    {
      "Color": Color.fromRGBO(82, 98, 255, 1),
      "text": "Groceries",
      "amount": 500
    },
    {
      "Color": Color.fromRGBO(46, 198, 255, 1),
      "text": "Online Shopping",
      "amount": 150
    },
    {
      "Color": Color.fromRGBO(123, 201, 82, 1),
      "text": "Footware",
      "amount": 90
    },
    {"Color": Color.fromRGBO(255, 171, 67, 1), "text": "Phone", "amount": 90},
    {"Color": Color.fromRGBO(252, 91, 57, 1), "text": "GF", "amount": 40},
    {"Color": Color.fromRGBO(139, 135, 130, 1), "text": "Random", "amount": 20}
  ];

  get_data() {
    return data;
  }

  getTotalExpense() {
    double total = 0;
    data.forEach((element) {
      total += element['amount'];
    });
    print('This is the total');
    print(total);
    return total;
  }
}
