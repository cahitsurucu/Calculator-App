import 'package:calculator_app/const/color.dart';
import 'package:flutter/material.dart';

class CardWidget extends StatelessWidget {
  final String title;
  final Color color;
  final double size;
  const CardWidget(
      {super.key,
      required this.title,
      required this.color,
      required this.size});

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {},
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
