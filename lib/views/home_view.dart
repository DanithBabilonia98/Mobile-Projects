import 'package:flutter/material.dart';

class HomeView extends StatelessWidget {
  const HomeView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(230, 255, 255, 255),
      appBar: AppBar(
        backgroundColor: const Color.fromARGB(253, 12, 211, 233),
        title: const Text('My App'),
      ),
      body: const Center(
        child: Text('Flutter :)'),
      ),
    );
  }
}
