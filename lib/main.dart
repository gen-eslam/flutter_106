import 'package:flutter/material.dart';
import 'package:flutter_106/counter/counter_screen.dart';
import 'package:flutter_106/navigation/screen_one.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: ScreenOne(), // change the screen
    );
  }
}
