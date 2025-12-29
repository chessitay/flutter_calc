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

  String formula = "";
  List<List<String>> history = [];

  bool newNumber = false;
  double firstNum = 0;
  double secondNum = 0;
  String operation = "";

  final List<List<String>> buttonLayout = [
    ["1", "2", "3", "+"],
    ["4", "5", "6", "-"],
    ["7", "8", "9", "*"],
    ["0", ".", "del", "="],
  ];

  void buttonPressed(String value) {
    setState(() {
      if (value == "del") {
        displayText = "waiting for input";
        formula = "";
        firstNum = 0;
        secondNum = 0;
        operation = "";
        newNumber = false;
      } else if (value == "+" || value == "-" || value == "*") {
        if (displayText != "waiting for input") {
          if (operation != "") {
            secondNum = double.parse(displayText);
            double res = 0;
            if (operation == "+") {
              res = firstNum + secondNum;
            } else if (operation == "-") {
              res = firstNum - secondNum;
            } else if (operation == "*") {
              res = firstNum * secondNum;
            }

            if (res % 1 == 0) {
              displayText = res.toInt().toString();
            } else {
              displayText = res.toString();
            }
            firstNum = double.parse(displayText);
            operation = value;
            formula = "$firstNum $operation";
            newNumber = true;
          } else {
            firstNum = double.parse(displayText);
            operation = value;
            formula = "$firstNum $operation";
            newNumber = true;
          }
        }
      } else if (value == "=") {
        if (displayText != "waiting for input" && operation != "") {
          secondNum = double.parse(displayText);
          double res = 0;
          if (operation == "+") {
            res = firstNum + secondNum;
          } else if (operation == "-") {
            res = firstNum - secondNum;
          } else if (operation == "*") {
            res = firstNum * secondNum;
          }

          formula = "$firstNum $operation $secondNum = $res";

          if (res % 1 == 0) {
            displayText = res.toInt().toString();
            history.add([
              firstNum.toString(),
              operation,
              secondNum.toString(),
              "=",
              res.toInt().toString(),
            ]);
            print(history);
          } else {
            displayText = res.toString();
            history.add([
              firstNum.toString(),
              operation,
              secondNum.toString(),
              "=",
              res.toString(),
            ]);
            print(history);
          }

          operation = "";
          newNumber = true;
        }
      } else {
        if (value == "." && displayText.contains(".")) {
          return;
        }
        if (displayText == "waiting for input") {
          displayText = value;
          formula = value;
        } else if (newNumber == true) {
          displayText = value;
          if (operation != "") {
            formula = "$firstNum $operation $displayText";
          } else {
            formula = value;
          }
          newNumber = false;
        } else {
          displayText = displayText + value;
          if (operation != "") {
            formula = "$firstNum $operation $displayText";
          } else {
            formula = displayText;
          }
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
              formula,
              style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
            ),
            ...buttonLayout.map((row) {
              return Column(
                children: [
                  Row(
                    spacing: 5,
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      ...row.map((buttonValue) {
                        Widget
                        delButton; // del button is an icon so I need to create a widget for it
                        if (buttonValue == "del") {
                          delButton = Icon(Icons.backspace);
                        } else {
                          delButton = Text(buttonValue);
                        }

                        return ElevatedButton(
                          onPressed: () {
                            buttonPressed(buttonValue);
                          },
                          child: delButton,
                        );
                      }),
                    ],
                  ),
                  SizedBox(height: 7),
                ],
              );
            }),
          ],
        ),
      ),
    );
  }
}
