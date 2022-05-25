import 'package:flutter/material.dart';

class Counter extends StatelessWidget {
  const Counter({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    const sizeText = TextStyle(fontSize: 20);

    int counter = 10;

    return Scaffold(
      backgroundColor: const Color.fromARGB(230, 255, 255, 255),
      appBar: AppBar(
        backgroundColor: const Color.fromARGB(253, 12, 211, 233),
        title: const Text('My App'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            const Text('counter',
                style: TextStyle(fontSize: 30, color: Colors.black)),
            Text('$counter', style: sizeText),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
          child: const Icon(Icons.add),
          onPressed: () {
            counter++;
            showMessage();
          }),
    );
  }

  void showMessage() {
    print("Hello, It's me");
  }
}
