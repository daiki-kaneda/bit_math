
import 'dart:async';

import 'package:bit_math/game.dart';
import 'package:bit_math/screens/playing_page/stages/objects/sentence.dart';
import 'package:flame/components.dart';

class Score extends PositionComponent with HasGameReference<BitmanMath>{

  Sentence scoreText = Sentence(
    34, 1, 
    str: 0.toString().padLeft(12,'0'), 
    direction: SentenceDirection.horizontal);

  int currentScore = 0;

  @override
  FutureOr<void> onLoad() {
    add(scoreText);
    return super.onLoad();
  }

  @override
  void update(double dt) {
    if(currentScore<game.gameState.score){
      currentScore = game.gameState.score;
      remove(scoreText);
      scoreText = Sentence(34, 1,
          str: currentScore.toString().padLeft(12,'0'),
          direction: SentenceDirection.horizontal);
      add(scoreText);
    }
    super.update(dt);
  }

  @override
  void onRemove() {
    scoreText = Sentence(
    34, 1, 
    str: 0.toString().padLeft(12), 
    direction: SentenceDirection.horizontal);
    super.onRemove();
  }
}