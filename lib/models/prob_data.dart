
class ProbData{
  const ProbData(
    this.level,
    {required this.answer,
    required this.sentence,
    required this.choices});

  final int level;
  final String answer;
  final String sentence;
  final List<String> choices;

}