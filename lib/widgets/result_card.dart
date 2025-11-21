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
    return Card(
      elevation: 4,
      child: Padding(
        padding: const EdgeInsets.all(20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text("Time: ${result.seconds.toStringAsFixed(2)}s"),
            Text("Speed: ${result.wpm.toStringAsFixed(1)} WPM"),
            Text("Accuracy: ${result.accuracy.toStringAsFixed(1)}%"),
            Text("Performance: ${result.message}"),
          ],
        ),
      ),
    );
  }
}
