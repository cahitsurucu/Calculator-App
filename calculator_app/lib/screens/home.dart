import 'package:calculator_app/const/color.dart';
import 'package:flutter/material.dart';
import 'package:calculator_app/models/card.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
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
              color: Colors.amber,
              width: MediaQuery.of(context).size.width,
              height: 110,
              child: const Text(
                "Input",
                style: TextStyle(fontSize: 24),
              ),
            ),
            Container(
              alignment: Alignment.centerRight,
              color: Colors.blueGrey,
              width: MediaQuery.of(context).size.width,
              height: 100,
              child: const Text(
                "Output",
                style: TextStyle(fontSize: 24),
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
                ),
                CardWidget(
                  title: "DEL",
                  color: blue,
                  size: 22,
                ),
                CardWidget(
                  title: "%",
                  color: red,
                  size: 26,
                ),
                CardWidget(
                  title: "/",
                  color: red,
                  size: 26,
                ),
                CardWidget(
                  title: "7",
                  color: grey,
                  size: 22,
                ),
                CardWidget(
                  title: "8",
                  color: grey,
                  size: 22,
                ),
                CardWidget(
                  title: "9",
                  color: grey,
                  size: 22,
                ),
                CardWidget(
                  title: "X",
                  color: red,
                  size: 26,
                ),
                CardWidget(
                  title: "4",
                  color: grey,
                  size: 22,
                ),
                CardWidget(
                  title: "5",
                  color: grey,
                  size: 22,
                ),
                CardWidget(
                  title: "6",
                  color: grey,
                  size: 22,
                ),
                CardWidget(
                  title: "-",
                  color: red,
                  size: 26,
                ),
                CardWidget(
                  title: "1",
                  color: grey,
                  size: 22,
                ),
                CardWidget(
                  title: "2",
                  color: grey,
                  size: 22,
                ),
                CardWidget(
                  title: "3",
                  color: grey,
                  size: 22,
                ),
                CardWidget(
                  title: "+",
                  color: red,
                  size: 26,
                ),
                CardWidget(
                  title: "00",
                  color: grey,
                  size: 22,
                ),
                CardWidget(
                  title: "0",
                  color: grey,
                  size: 22,
                ),
                CardWidget(
                  title: ".",
                  color: grey,
                  size: 22,
                ),
                CardWidget(
                  title: "=",
                  color: blue,
                  size: 26,
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
