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
  String displayText = "0";
  var result = "";

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
                    setState(() {
                      displayText = displayText + "1";
                      print("user has clicked 1");
                    });
                  },
                  child: Text("1"),
                ),
                SizedBox(width: 5),
                ElevatedButton(
                  onPressed: () {
                    setState(() {
                      displayText = displayText + "2";
                      print("user has clicked 2");
                    });
                  },
                  child: Text("2"),
                ),
                SizedBox(width: 5),
                ElevatedButton(
                  onPressed: () {
                    setState(() {
                      displayText = displayText + "3";
                      print("user has clicked 3");
                    });
                  },
                  child: Text("3"),
                ),
                SizedBox(width: 5),
                ElevatedButton(
                  onPressed: () {
                    setState(() {
                      displayText = displayText + "+";
                      print("user has clicked +");
                    });
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
                    setState(() {
                      displayText = displayText + "4";
                      print("user has clicked 4");
                    });
                  },
                  child: Text("4"),
                ),
                SizedBox(width: 5),
                ElevatedButton(
                  onPressed: () {
                    setState(() {
                      displayText = displayText + "5";
                      print("user has clicked 5");
                    });
                  },
                  child: Text("5"),
                ),
                SizedBox(width: 5),
                ElevatedButton(
                  onPressed: () {
                    setState(() {
                      displayText = displayText + "6";
                      print("user has clicked 6");
                    });
                  },
                  child: Text("6"),
                ),
                SizedBox(width: 5),
                ElevatedButton(
                  onPressed: () {
                    setState(() {
                      displayText = displayText + "-";
                      print("user has clicked -");
                    });
                  },
                  child: Text("-"), // todo: implement -
                ),
              ],
            ),
            SizedBox(height: 7),
            Row(
              mainAxisSize: MainAxisSize.min,
              children: [
                ElevatedButton(
                  onPressed: () {
                    setState(() {
                      displayText = displayText + "7";
                      print("user has clicked 7");
                    });
                  },
                  child: Text("7"),
                ),
                SizedBox(width: 5),
                ElevatedButton(
                  onPressed: () {
                    setState(() {
                      displayText = displayText + "8";
                      print("user has clicked 8");
                    });
                  },
                  child: Text("8"),
                ),
                SizedBox(width: 5),
                ElevatedButton(
                  onPressed: () {
                    setState(() {
                      displayText = displayText + "9";
                      print("user has clicked 9");
                    });
                  },
                  child: Text("9"),
                ),
                SizedBox(width: 5),
                ElevatedButton(
                  onPressed: () {
                    setState(() {
                      displayText = displayText + "*";
                      print("user has clicked *");
                    });
                  },
                  child: Text("*"), // todo: implement *
                ),
              ],
            ),
            SizedBox(height: 7),
            Row(
              mainAxisSize: MainAxisSize.min,
              children: [
                ElevatedButton(
                  onPressed: () {
                    setState(() {
                      displayText = displayText + "0";
                      print("user has clicked 0");
                    });
                  },
                  child: Text("0"),
                ),
                SizedBox(width: 5),
                ElevatedButton(
                  onPressed: () {
                    setState(() {
                      displayText = displayText + ".";
                      print("user has clicked .");
                    });
                  },
                  child: Text("."), // todo: implement .
                ),
                SizedBox(width: 5),
                ElevatedButton(
                  onPressed: () {
                    setState(() {
                      displayText = displayText + "del";
                      print("user has clicked del");
                    });
                  },
                  child: Text("del"), // todo: implement del + change into svg
                ),
                SizedBox(width: 5),
                ElevatedButton(
                  onPressed: () {
                    setState(() {
                      displayText = displayText + "=";
                      print("user has clicked =");
                    });
                  },
                  child: Text("="), // todo: implement =
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
