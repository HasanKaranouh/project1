class TypingResult{
  final double seconds;
  final double wpm;
  final double accuracy;
  final String message;

  TypingResult({
    required this.seconds,
    required this.wpm,
    required this.accuracy,
    required this.message,
});
}
class TypingLogic{
  static TypingResult calculateResult({
    required String original,
    required String typed,
    required double seconds,
}){
    int matching = 0;
    int length = original.length;

    for (int i = 0; i < typed.length && i < original.length; i++){
      if (typed[i] == original[i]){
        matching++;

      }
    }
  }
}