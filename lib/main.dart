import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key}) : super(key: key);

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  String millisecondsText = "";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Stack(
        children: [
          Align(
            alignment: const Alignment(0, -0.9),
            child: Text("Test your\nreaction speed",
                textAlign: TextAlign.center,
                style: TextStyle(
                    fontSize: 40,
                    fontWeight: FontWeight.w700,
                    color: Colors.black)),
          ),
          Align(
            alignment: Alignment.center,
            child: ColoredBox(
              color: Colors.black12,
              child: SizedBox(
                height: 160,
                width: 300,
                child: Center(
                  child: Text(millisecondsText,
                      textAlign: TextAlign.center,
                      style: TextStyle(
                          fontSize: 40,
                          fontWeight: FontWeight.w700,
                          color: Colors.black)),
                ),
              ),
            ),
          ),
          Align(
            alignment: const Alignment(0, 0.9),
            child: GestureDetector(
              onTap: () => setState(() => millisecondsText = "149 ms"),
              child: ColoredBox(
                color: Colors.black12,
                child: SizedBox(
                  height: 200,
                  width: 200,
                  child: Center(
                    child: Text("START",
                        textAlign: TextAlign.center,
                        style: TextStyle(
                            fontSize: 35,
                            fontWeight: FontWeight.w700,
                            color: Colors.black)),
                  ),
                ),
              ),
            ),
          )
        ],
      ),
    );
  }
}

enum GameState { readyToStart, waiting, canBeStopped }
