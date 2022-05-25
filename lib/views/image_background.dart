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
      body: Image.network(
          'https://www.xtrafondos.com/wallpapers/resized/rayo-durante-tormenta-en-las-montanas-10012.jpg?s=large'),
    );
  }
}
