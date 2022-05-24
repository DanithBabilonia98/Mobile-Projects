import 'package:flutter/material.dart';
import 'package:flutter_application_1/views/home_view.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner:
          false, // no aparezca el debug banner, atributo del MaterialApp
      home: HomeView(),
    );
  }
}
