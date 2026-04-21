
import 'dart:async';

import 'package:bit_math/game.dart';
import 'package:bit_math/game_state.dart';
import 'package:bit_math/screens/playing_page/stages/objects/sentence.dart';
import 'package:flame/components.dart';

class AligatorNumber extends PositionComponent with HasGameReference<BitmanMath>{

  Sentence aligatorText = Sentence(
    9, 1, 
    str: 'a*${'0'.padLeft(2,'0')}', 
    direction: SentenceDirection.horizontal);

  int currentNumber= 0;

  @override
  FutureOr<void> onLoad() {
    add(aligatorText);
    return super.onLoad();
  }

  @override
  void update(double dt) {
    if(currentNumber<game.gameState.numbersOfAligator){
      currentNumber = game.gameState.numbersOfAligator;
      remove(aligatorText);
      aligatorText = Sentence(9, 1,
          str: 'a*${
            currentNumber==GameState.aligatorLimit ? 'MAX!':currentNumber.toString().padLeft(2,'0')}',
          direction: SentenceDirection.horizontal);
      add(aligatorText);
    }
    super.update(dt);
  }

  @override
  void onRemove() {
    aligatorText = Sentence(
    9, 1, 
    str: 'a*${'0'.padLeft(2,'0')}', 
    direction: SentenceDirection.horizontal);
    super.onRemove();
  }
}