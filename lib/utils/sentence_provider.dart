import 'dart:math';

class SentenceProvider{
  static final List<String> sentences = [
    "Flutter makes it easy to build beautiful apps.",
    "Typing fast is a useful skill for everyone.",
    "Practice every day to improve your typing speed.",
  ];
  static String getRandomSentence(){
    final random = Random();
    return sentences[random.nextInt(sentences.length)];
  }
}