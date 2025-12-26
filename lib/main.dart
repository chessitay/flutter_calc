import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Calc',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.blue),
      ),
      home: const MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key});

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  String displayText = "waiting for input";
  var result = "";

  bool newNumber = false;
  double firstNum = 0;
  double secondNum = 0;
  String operation = "";

  void buttonPressed(String value) {
    setState(() {
      if (value == "del") {
        displayText = "waiting for input";
        firstNum = 0;
        secondNum = 0;
        operation = "";
        newNumber = false;
      } else if (value == "+" || value == "-" || value == "*") {
        if (displayText != "waiting for input") {
          if (operation != "") {
            secondNum = double.parse(displayText);
            if (operation == "+") {
              displayText = (firstNum + secondNum).toString();
            } else if (operation == "-") {
              displayText = (firstNum - secondNum).toString();
            } else if (operation == "*") {
              displayText = (firstNum * secondNum).toString();
            }
            firstNum = double.parse(displayText);
            operation = value;
            newNumber = true;
          } else {
            firstNum = double.parse(displayText);
            operation = value;
            newNumber = true;
          }
        }
      } else if (value == "=") {
        if (displayText != "waiting for input" && operation != "") {
          secondNum = double.parse(displayText);
          if (operation == "+") {
            displayText = (firstNum + secondNum).toString();
          } else if (operation == "-") {
            displayText = (firstNum - secondNum).toString();
          } else if (operation == "*") {
            displayText = (firstNum * secondNum).toString();
          }
          newNumber = true;
        }
      } else {
        if (value == "." && displayText.contains(".")) {
          return;
        }
        if (displayText == "waiting for input") {
          displayText = value;
        } else if (newNumber == true) {
          displayText = value;
          newNumber = false;
        } else {
          displayText = displayText + value;
        }
      }
      print("user clicked $value");
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Flutter Calc')),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              displayText,
              style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
            ),
            Row(
              spacing: 5,
              mainAxisSize: MainAxisSize.min,
              children: [
                ElevatedButton(
                  onPressed: () {
                    buttonPressed("1");
                  },
                  child: Text("1"),
                ),
                ElevatedButton(
                  onPressed: () {
                    buttonPressed("2");
                  },
                  child: Text("2"),
                ),
                ElevatedButton(
                  onPressed: () {
                    buttonPressed("3");
                  },
                  child: Text("3"),
                ),
                ElevatedButton(
                  onPressed: () {
                    buttonPressed("+");
                  },
                  child: Text("+"),
                ),
              ],
            ),
            SizedBox(height: 7), // magic number (just found it to be the best)
            Row(
              spacing: 5,
              mainAxisSize: MainAxisSize.min,
              children: [
                ElevatedButton(
                  onPressed: () {
                    buttonPressed("4");
                  },
                  child: Text("4"),
                ),
                ElevatedButton(
                  onPressed: () {
                    buttonPressed("5");
                  },
                  child: Text("5"),
                ),
                ElevatedButton(
                  onPressed: () {
                    buttonPressed("6");
                  },
                  child: Text("6"),
                ),
                ElevatedButton(
                  onPressed: () {
                    buttonPressed("-");
                  },
                  child: Text("-"),
                ),
              ],
            ),
            SizedBox(height: 7),
            Row(
              spacing: 5,
              mainAxisSize: MainAxisSize.min,
              children: [
                ElevatedButton(
                  onPressed: () {
                    buttonPressed("7");
                  },
                  child: Text("7"),
                ),
                ElevatedButton(
                  onPressed: () {
                    buttonPressed("8");
                  },
                  child: Text("8"),
                ),
                ElevatedButton(
                  onPressed: () {
                    buttonPressed("9");
                  },
                  child: Text("9"),
                ),
                ElevatedButton(
                  onPressed: () {
                    buttonPressed("*");
                  },
                  child: Text("*"),
                ),
              ],
            ),
            SizedBox(height: 7),
            Row(
              spacing: 5,
              mainAxisSize: MainAxisSize.min,
              children: [
                ElevatedButton(
                  onPressed: () {
                    buttonPressed("0");
                  },
                  child: Text("0"),
                ),
                ElevatedButton(
                  onPressed: () {
                    buttonPressed(".");
                  },
                  child: Text("."),
                ),
                ElevatedButton(
                  onPressed: () {
                    buttonPressed("del");
                  },
                  child: Icon(Icons.backspace),
                ),
                ElevatedButton(
                  onPressed: () {
                    buttonPressed("=");
                  },
                  child: Text("="),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
