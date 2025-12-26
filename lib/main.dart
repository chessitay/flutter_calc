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

  void buttonPressed(String value) {
    setState(() {
      if (displayText == "waiting for input") {
        displayText = value;
      } else {
        displayText = displayText + value;
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
            Text(displayText),
            Row(
              mainAxisSize: MainAxisSize.min,
              children: [
                ElevatedButton(
                  onPressed: () {
                    buttonPressed("1");
                  },
                  child: Text("1"),
                ),
                SizedBox(width: 5),
                ElevatedButton(
                  onPressed: () {
                    buttonPressed("2");
                  },
                  child: Text("2"),
                ),
                SizedBox(width: 5),
                ElevatedButton(
                  onPressed: () {
                    buttonPressed("3");
                  },
                  child: Text("3"),
                ),
                SizedBox(width: 5),
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
              mainAxisSize: MainAxisSize.min,
              children: [
                ElevatedButton(
                  onPressed: () {
                    buttonPressed("4");
                  },
                  child: Text("4"),
                ),
                SizedBox(width: 5),
                ElevatedButton(
                  onPressed: () {
                    buttonPressed("5");
                  },
                  child: Text("5"),
                ),
                SizedBox(width: 5),
                ElevatedButton(
                  onPressed: () {
                    buttonPressed("6");
                  },
                  child: Text("6"),
                ),
                SizedBox(width: 5),
                ElevatedButton(
                  onPressed: () {
                    buttonPressed("-");
                  },
                  child: Text("-"), // todo: implement - logic
                ),
              ],
            ),
            SizedBox(height: 7),
            Row(
              mainAxisSize: MainAxisSize.min,
              children: [
                ElevatedButton(
                  onPressed: () {
                    buttonPressed("7");
                  },
                  child: Text("7"),
                ),
                SizedBox(width: 5),
                ElevatedButton(
                  onPressed: () {
                    buttonPressed("8");
                  },
                  child: Text("8"),
                ),
                SizedBox(width: 5),
                ElevatedButton(
                  onPressed: () {
                    buttonPressed("9");
                  },
                  child: Text("9"),
                ),
                SizedBox(width: 5),
                ElevatedButton(
                  onPressed: () {
                    buttonPressed("*");
                  },
                  child: Text("*"), // todo: implement * logic
                ),
              ],
            ),
            SizedBox(height: 7),
            Row(
              mainAxisSize: MainAxisSize.min,
              children: [
                ElevatedButton(
                  onPressed: () {
                    buttonPressed("0");
                  },
                  child: Text("0"),
                ),
                SizedBox(width: 5),
                ElevatedButton(
                  onPressed: () {
                    buttonPressed(".");
                  },
                  child: Text("."), // todo: implement . logic
                ),
                SizedBox(width: 5),
                ElevatedButton(
                  onPressed: () {
                    buttonPressed("del");
                  },
                  child: Text("del"), // todo: del logic + svg swap obv
                ),
                SizedBox(width: 5),
                ElevatedButton(
                  onPressed: () {
                    buttonPressed("=");
                  },
                  child: Text("="), //  todo: implement = logic
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
