import 'package:flutter/material.dart';

class CounterScreen extends StatefulWidget {
  const CounterScreen({Key? key}) : super(key: key);

  @override
  State<CounterScreen> createState() => _CounterScreenState();
}

class _CounterScreenState extends State<CounterScreen> {
  int counter = 10;
  @override
  Widget build(BuildContext context) {
    const sizeText = TextStyle(fontSize: 20, fontWeight: FontWeight.bold);

    return Scaffold(
      backgroundColor: const Color.fromARGB(230, 255, 255, 255),
      appBar: AppBar(
        backgroundColor: const Color.fromARGB(253, 12, 211, 233),
        title: const Text('My App',
            style: TextStyle(
                fontSize: 30,
                color: Colors.white,
                fontWeight: FontWeight.bold)),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            const Text('Counter',
                style: TextStyle(fontSize: 40, color: Colors.indigo)),
            Text('$counter', style: sizeText),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          setState(() {
            counter += 2;
          });
          showMessage();
        },
        child: const Icon(Icons.add),
      ),
    );
  }

  void showMessage() {
    print("Hello, It's me");
  }
}
