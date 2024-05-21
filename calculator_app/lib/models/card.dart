import 'package:calculator_app/const/color.dart';
import 'package:calculator_app/services/calculate.dart';
import 'package:flutter/material.dart';

class CardWidget extends StatelessWidget {
  final String title;
  final Color color;
  final double size;
  final Calculate calculate;
  final Function changeText;
  const CardWidget(
      {super.key,
      required this.title,
      required this.color,
      required this.size,
      required this.calculate,
      required this.changeText});
  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        switch (title) {
          case "C":
            calculate.clear();
            break;
          case "DEL":
            calculate.delete();
            break;
          case "=":
            calculate.convert();
            break;
          default:
            calculate.setData(title);
            break;
        }
        changeText(calculate.getInput(), calculate.getResult());
      },
      child: Container(
        color: color,
        child: Center(
            child: Text(
          title,
          style: TextStyle(fontSize: size, color: white),
        )),
      ),
    );
  }
}
