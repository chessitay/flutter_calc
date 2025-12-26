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

class MyHomePage extends StatelessWidget {
  const MyHomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Flutter Calc')),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text("keyboard"),
            Row(
              mainAxisSize: MainAxisSize.min,
              children: [
                ElevatedButton(
                  onPressed: () {
                    print("1");
                  },
                  child: Text("1"),
                ),
                SizedBox(width: 5),
                ElevatedButton(
                  onPressed: () {
                    print("2");
                  },
                  child: Text("2"),
                ),
                SizedBox(width: 5),
                ElevatedButton(
                  onPressed: () {
                    print("3");
                  },
                  child: Text("3"),
                ),
                SizedBox(width: 5),
                ElevatedButton(
                  onPressed: () {
                    print("+");
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
                    print("4");
                  },
                  child: Text("4"),
                ),
                SizedBox(width: 5),
                ElevatedButton(
                  onPressed: () {
                    print("5");
                  },
                  child: Text("5"),
                ),
                SizedBox(width: 5),
                ElevatedButton(
                  onPressed: () {
                    print("6");
                  },
                  child: Text("6"),
                ),
                SizedBox(width: 5),
                ElevatedButton(
                  onPressed: () {
                    print("-");
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
                    print("7");
                  },
                  child: Text("7"),
                ),
                SizedBox(width: 5),
                ElevatedButton(
                  onPressed: () {
                    print("8");
                  },
                  child: Text("8"),
                ),
                SizedBox(width: 5),
                ElevatedButton(
                  onPressed: () {
                    print("9");
                  },
                  child: Text("9"),
                ),
                SizedBox(width: 5),
                ElevatedButton(
                  onPressed: () {
                    print("*");
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
                    print("0");
                  },
                  child: Text("0"),
                ),
                SizedBox(width: 5),
                ElevatedButton(
                  onPressed: () {
                    print(".");
                  },
                  child: Text("."), // todo: implement .
                ),
                SizedBox(width: 5),
                ElevatedButton(
                  onPressed: () {
                    print("del");
                  },
                  child: Text("del"), // todo: implement del + change into svg
                ),
                SizedBox(width: 5),
                ElevatedButton(
                  onPressed: () {
                    print("=");
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
