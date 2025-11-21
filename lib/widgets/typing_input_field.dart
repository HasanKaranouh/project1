import 'package:flutter/material.dart';

class TypingInputField extends StatelessWidget {
  final TextEditingController controller;
  final Function(String) onChanged;

  const TypingInputField({
  super.key,
  required this.controller,
    required this.onChanged,
  });

  @override
  Widget build(BuildContext context) {
    return TextField(
      controller: controller,
      onChanged: onChanged,
        maxLines: 3,
        decoration: const InputDecoration(
          border: OutlineInputBorder(),
          hintText: "Start typing here...",
        ),
    );
  }
}
