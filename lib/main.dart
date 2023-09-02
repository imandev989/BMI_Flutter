import 'package:flutter/material.dart';

void main() => runApp(myApp());

class myApp extends StatelessWidget {
  const myApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatelessWidget {
  const MyHomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.black,
        appBar: AppBar(
          centerTitle: true,
          title: const Text(
            "BMI Calculator",
            style: TextStyle(color: Colors.yellow, fontSize: 13.0),
          ),
          backgroundColor: Colors.black,
        ),
        body: Column(
          children: [
            const SizedBox(
              height: 15.0,
            ),
            Padding(
              padding: const EdgeInsets.only(left: 25.0, right: 25.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Container(
                    color: Colors.black,
                    height: 90.0,
                    width: 110.0,
                    child: const TextField(
                      style: TextStyle(color: Colors.yellow, fontSize: 35.0),
                      decoration: InputDecoration(
                          border: InputBorder.none,
                          hintText: 'Height',
                          hintStyle: TextStyle(
                              fontSize: 35.0,
                              color: Colors.grey,
                              fontWeight: FontWeight.bold)),
                    ),
                  ),
                  Container(
                    color: Colors.black,
                    height: 90.0,
                    width: 110.0,
                    child: const TextField(
                      style: TextStyle(color: Colors.yellow, fontSize: 35.0),
                      decoration: InputDecoration(
                          border: InputBorder.none,
                          hintText: 'weight',
                          hintStyle: TextStyle(
                              fontSize: 35.0,
                              color: Colors.grey,
                              fontWeight: FontWeight.bold)),
                    ),
                  )
                ],
              ),
            ),
            ElevatedButton(
              style: ElevatedButton.styleFrom(backgroundColor: Colors.black),
              onPressed: () {},
              child: const Text(
                "Calculate",
                style: TextStyle(color: Colors.yellow, fontSize: 25.0),
              ),
            ),
            const SizedBox(
              height: 50.0,
            ),
            const Text(
              "0",
              style: TextStyle(color: Colors.yellow, fontSize: 30.0),
            ),
            const SizedBox(
              height: 50.0,
            ),
            const Text(
              "Normal Weight !",
              style: TextStyle(color: Colors.yellow, fontSize: 23.0),
            ),
            const SizedBox(
              height: 40.0,
            ),
            const RightBar(barwidth: 28.0),
            const RightBar(barwidth: 60.0),
            const RightBar(barwidth: 30.0),
            const LeftBar(barwidth: 30.0),
            const LeftBar(barwidth: 30.0),
          ],
        ));
  }
}

class RightBar extends StatelessWidget {
  final double barwidth;
  const RightBar({super.key, required this.barwidth});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(
        top: 10.0,
        bottom: 10.0,
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          Container(
            height: 26.0,
            width: barwidth,
            decoration: const BoxDecoration(
              borderRadius: BorderRadius.only(
                topLeft: Radius.circular(20.0),
                bottomLeft: Radius.circular(20.0),
              ),
              color: Colors.yellow,
            ),
          )
        ],
      ),
    );
  }
}

class LeftBar extends StatelessWidget {
  final double barwidth;

  const LeftBar({super.key, required this.barwidth});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 10.0, bottom: 10.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Container(
            // color: Colors.red,
            height: 26.0,
            width: barwidth,
            decoration: const BoxDecoration(
              borderRadius: BorderRadius.only(
                topRight: Radius.circular(20.0),
                bottomRight: Radius.circular(20.0),
              ),
              color: Colors.yellow,
            ),
          )
        ],
      ),
    );
  }
}
