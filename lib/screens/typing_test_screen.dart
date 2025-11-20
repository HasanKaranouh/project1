import 'package:flutter/material.dart';

class TypingTestScreen extends StatefulWidget {
  const TypingTestScreen({super.key});

  @override
  State<TypingTestScreen> createState() => _TypingTestScreenState();
}

class _TypingTestScreenState extends State<TypingTestScreen> {
  late String sentence;
  DateTime? startTime;
  final TextEditingController controller = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return const Scaffold();
  }
}
