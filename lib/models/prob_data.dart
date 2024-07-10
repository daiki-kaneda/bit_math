
import 'package:bit_math/screens/playing_page/stages/objects/letter.dart';
import 'package:flutter/material.dart';

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


  Widget buildColoredAnswerText() {
    List<TextSpan> spans = [];

    for (var char in sentence.characters) {
      spans.add(TextSpan(
        text: char == '#' ? answer:LetterStatus.convertNormalChar(char),
        style: TextStyle(
          color: char == '#' ? Colors.white : Colors.black,
          fontWeight: char == '#' ? FontWeight.bold:FontWeight.normal
        ),
      ));
    }

    return Text.rich(
      TextSpan(children: spans),
    );
  }
}

