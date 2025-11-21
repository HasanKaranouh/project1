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
    double accuracy = (matching / length) * 100;
    double wpm = (length / 5) / (seconds / 60);

    String message;
    if(wpm > 40) {
      message = "Fast";
    } else if (wpm >= 25){
      message = "Average";
    } else {
      message = "Slow";
    }

    return TypingResult(
      seconds: seconds,
      wpm: wpm,
      accuracy: accuracy,
      message: message,
    );
  }
}