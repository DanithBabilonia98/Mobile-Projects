import 'package:flutter/material.dart';

class CounterScreen extends StatefulWidget {
  const CounterScreen({Key? key}) : super(key: key);

  @override
  State<CounterScreen> createState() => _CounterScreenState();
}

class _CounterScreenState extends State<CounterScreen> {
  int counter = 10;

  void increment() {
    setState(() {
      counter++;
    });
  }

  void decrement() {
    counter--;
    setState(() {});
  }

  void reset() {
    counter = 0;
    setState(() {});
  }

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
            TextFormField(
              decoration:
                  const InputDecoration(labelText: 'Enter your username'),
            ),
            TextFormField(
              decoration:
                  const InputDecoration(labelText: 'Enter your Password'),
            ),
            TextFormField(
              decoration: const InputDecoration(labelText: 'Enter your Email'),
            ),
          ],
        ),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
      floatingActionButton:
          GroupButton(increment: increment, decrease: decrement, reset: reset),
    );
  }

  void showMessage() {
    print("Hello, It's me");
  }
}

class GroupButton extends StatelessWidget {
  final Function increment;
  final Function decrease;
  final Function reset;
  const GroupButton({
    Key? key,
    required this.increment,
    required this.decrease,
    required this.reset,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(children: <Widget>[
      Expanded(
          child: FloatingActionButton(
              child: const Icon(Icons.add),
              onPressed: () {
                increment();
              })),
      Expanded(
          child: FloatingActionButton(
              child: const Icon(Icons.remove_circle_outline_sharp),
              onPressed: () => reset())),
      Expanded(
          child: FloatingActionButton(
              child: const Icon(Icons.remove),
              onPressed: () {
                decrease();
              })),
    ]);
  }
}
