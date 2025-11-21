import 'package:flutter/material.dart';
import 'screens/typing_test_screen.dart';


void main() {
  runApp(const TypingSpeedApp());
}

class TypingSpeedApp extends StatelessWidget {
  const TypingSpeedApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      title: "Typing Speed Tester",
      debugShowCheckedModeBanner: false,
      home: TypingTestScreen(),
    );
  }
}
