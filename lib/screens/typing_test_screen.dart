import 'package:flutter/material.dart';
import 'package:project1/widgets/typing_input_field.dart';
import 'package:project1/widgets/result_card.dart';
import 'package:project1/utils/typing_logic.dart';
import 'package:project1/utils/sentence_provider.dart';

class TypingTestScreen extends StatefulWidget {
  const TypingTestScreen({super.key});

  @override
  State<TypingTestScreen> createState() => _TypingTestScreenState();
}

class _TypingTestScreenState extends State<TypingTestScreen> {
  late String sentence;
  DateTime? startTime;
  final TextEditingController controller = TextEditingController();
  TypingResult? result;

  @override
  void initState() {
    super.initState();
    sentence = SentenceProvider.getRandomSentence();
  }

  void onTextChanged(String value){
    if(value.isNotEmpty && startTime == null){
      startTime = DateTime.now();
    }
  }

  void submit(){
    if(startTime == null) return;

    final endTime = DateTime.now();
    final duration = endTime.difference(startTime!);

    final typingResult = TypingLogic.calculateResult(
      original: sentence,
      typed: controller.text,
      seconds: duration.inMilliseconds / 1000,
    );

    setState(() {
      result = typingResult;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Typing Speed Tester"),
      ),
      body: Padding(
        padding: const EdgeInsets.all(20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              "Type the following sentence:",
              style: const TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
            ),
            const SizedBox(height: 10),

            Text(
              sentence,
              style: const TextStyle(fontSize: 16),
            ),
            const SizedBox(height: 20),

            TypingInputField(
              controller: controller,
              onTextChanged: onTextChanged,
            ),
            const SizedBox(height: 20),

            ElevatedButton(
              onPressed: submit,
              child: const Text("Submit"),
            ),

            const SizedBox(height: 20),

            if (result != null) ResultCard(result: result!),
          ],
        ),
      ),
    );
  }
}
