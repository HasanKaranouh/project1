import 'package:flutter/material.dart';
import 'package:project1/utils/typing_logic.dart';

class ResultCard extends StatelessWidget {
  final TypingResult result;

  const ResultCard({
    super.key,
    required this.result,
  });

  @override
  Widget build(BuildContext context) {
    return const Card(
      elevation: 4,
      child: Padding(
        padding: const EdgeInsets.all(20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(),
          ],
        ),
      ),
    );
  }
}
