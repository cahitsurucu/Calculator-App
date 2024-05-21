import 'package:calculator_app/const/color.dart';
import 'package:calculator_app/services/calculate.dart';
import 'package:flutter/material.dart';
import 'package:calculator_app/models/card.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  Calculate calculate = Calculate("", "0");
  String _input = "";
  String _output = "";

  void changeText(String input, String output) {
    setState(() {
      _input = input;
      _output = output;
    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          backgroundColor: blue,
          title: Text(
            "Simple Calculator",
            style: TextStyle(color: white),
          ),
        ),
        body: Column(
          children: [
            Container(
              alignment: Alignment.centerRight,
              width: MediaQuery.of(context).size.width,
              height: 110,
              child: Text(
                _input,
                style: const TextStyle(fontSize: 28),
              ),
            ),
            Container(
              alignment: Alignment.centerRight,
              width: MediaQuery.of(context).size.width,
              height: 100,
              child: Text(
                _output,
                style: const TextStyle(fontSize: 34),
              ),
            ),
            GridView.count(
              shrinkWrap: true,
              crossAxisCount: 4,
              primary: false,
              padding: const EdgeInsets.all(3),
              crossAxisSpacing: 4,
              mainAxisSpacing: 4,
              children: <Widget>[
                CardWidget(
                  title: "C",
                  color: blue,
                  size: 22,
                  calculate: calculate,
                  changeText: changeText,
                ),
                CardWidget(
                  title: "DEL",
                  color: blue,
                  size: 22,
                  calculate: calculate,
                  changeText: changeText,
                ),
                CardWidget(
                  title: "%",
                  color: red,
                  size: 26,
                  calculate: calculate,
                  changeText: changeText,
                ),
                CardWidget(
                  title: "/",
                  color: red,
                  size: 26,
                  calculate: calculate,
                  changeText: changeText,
                ),
                CardWidget(
                  title: "7",
                  color: grey,
                  size: 22,
                  calculate: calculate,
                  changeText: changeText,
                ),
                CardWidget(
                  title: "8",
                  color: grey,
                  size: 22,
                  calculate: calculate,
                  changeText: changeText,
                ),
                CardWidget(
                  title: "9",
                  color: grey,
                  size: 22,
                  calculate: calculate,
                  changeText: changeText,
                ),
                CardWidget(
                  title: "x",
                  color: red,
                  size: 26,
                  calculate: calculate,
                  changeText: changeText,
                ),
                CardWidget(
                  title: "4",
                  color: grey,
                  size: 22,
                  calculate: calculate,
                  changeText: changeText,
                ),
                CardWidget(
                  title: "5",
                  color: grey,
                  size: 22,
                  calculate: calculate,
                  changeText: changeText,
                ),
                CardWidget(
                  title: "6",
                  color: grey,
                  size: 22,
                  calculate: calculate,
                  changeText: changeText,
                ),
                CardWidget(
                  title: "-",
                  color: red,
                  size: 26,
                  calculate: calculate,
                  changeText: changeText,
                ),
                CardWidget(
                  title: "1",
                  color: grey,
                  size: 22,
                  calculate: calculate,
                  changeText: changeText,
                ),
                CardWidget(
                  title: "2",
                  color: grey,
                  size: 22,
                  calculate: calculate,
                  changeText: changeText,
                ),
                CardWidget(
                  title: "3",
                  color: grey,
                  size: 22,
                  calculate: calculate,
                  changeText: changeText,
                ),
                CardWidget(
                  title: "+",
                  color: red,
                  size: 26,
                  calculate: calculate,
                  changeText: changeText,
                ),
                CardWidget(
                  title: "00",
                  color: grey,
                  size: 22,
                  calculate: calculate,
                  changeText: changeText,
                ),
                CardWidget(
                  title: "0",
                  color: grey,
                  size: 22,
                  calculate: calculate,
                  changeText: changeText,
                ),
                CardWidget(
                  title: ".",
                  color: grey,
                  size: 22,
                  calculate: calculate,
                  changeText: changeText,
                ),
                CardWidget(
                  title: "=",
                  color: blue,
                  size: 26,
                  calculate: calculate,
                  changeText: changeText,
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
