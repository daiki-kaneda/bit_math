import 'dart:async';
import 'dart:developer';

import 'package:bit_math/game.dart';
import 'package:bit_math/helper/problem_generator.dart';
import 'package:bit_math/screens/playing_page/playing_page.dart';
import 'package:bit_math/screens/playing_page/stages/objects/frame.dart';
import 'package:bit_math/screens/playing_page/stages/objects/problem/blackboard.dart';
import 'package:bit_math/screens/playing_page/stages/objects/problem/input_block.dart';
import 'package:bit_math/screens/playing_page/stages/objects/problem/input_field.dart';
import 'package:bit_math/screens/playing_page/stages/objects/problem/problem_timer.dart';
import 'package:bit_math/screens/playing_page/stages/objects/sentence.dart';
import 'package:flame/components.dart';
import 'package:flame/effects.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter/services.dart';

enum ProblemStatus {
  initial,
  failure,
  success,
  timeup,
}

class Problem extends Component with HasGameRef<BitmanMath>{
  Problem(
      {required this.id,
      this.status = ProblemStatus.initial,
      this.problem = const [],
      this.answer = const [],
      this.inputText = '',
      this.maxLength = 1,
      this.generative = true});
  final String id;
  bool generative;
  final int maxLength;
  late ProblemTimer timer;

  ProblemStatus status;
  List<Component> problem;
  String inputText;
  List<String> answer;

  final interval = const Duration(milliseconds: 500);
  
  @override
  FutureOr<void> onLoad() async {
    if (generative) {
      // initial random problem
      resetProblem(1);
    }
    await addAll(problem);
    timer = ProblemTimer(x: 23, y: 4);
    await add(timer);
    return super.onLoad();
  }

  @override
  void update(double dt) {
    
    final playState = findParent<PlayingPage>()?.state;
    final gameState = game.gameState;
    final bitman = findParent<PlayingPage>()!.bitman;
    // maxLength check
    if (inputText.length > maxLength) {
      inputText = inputText.substring(0, maxLength);
    }

    if(timer.time<=0){
      status=ProblemStatus.timeup;
    }else if(inputText.isNotEmpty && !answer.contains(inputText)){
      status = ProblemStatus.failure;
    }else if(inputText.isNotEmpty && answer.contains(inputText)){
      status = ProblemStatus.success;
    }else{
      status = ProblemStatus.initial;
    }

    if(status!=ProblemStatus.initial){
      // reset problem

      if(status==ProblemStatus.success){
        if(playState!=null){
          game.gameState.score+=gameState.level*20+timer.time;
          resetProblem(gameState.level);
        }
        resetTimer();
      }
      if(status==ProblemStatus.failure){
        HapticFeedback.lightImpact();
        if(playState!=null){
          playState.lives-=1;
          bitman.add(
          OpacityEffect.fadeOut(
          EffectController(
            duration: 0.2,
            alternate: true,
            repeatCount: 5
          ),
        ));
          resetProblem(gameState.level);
        }
        resetTimer();
      }
      if(status==ProblemStatus.timeup){
        HapticFeedback.lightImpact();
        if(playState!=null){
          playState.lives-=1;
          bitman.add(
          OpacityEffect.fadeOut(
          EffectController(
            duration: 0.2,
            alternate: true,
            repeatCount: 5
          ),
        ));
          resetProblem(gameState.level);

          // reset timer
          resetTimer();
        }
        
      }
    }

    super.update(dt);
  }

  Future<void> resetProblem(int level)async{
    // random problem
    // onRemoveの際に、子供が適切に削除されないのは既知の問題なので、Problemではなく,worldに直接新しい要素を加えよう
      removeAll(problem);
      status = ProblemStatus.initial;
      final probData = ProbGen.generate(level: level);
      inputText = '';
      answer = [probData.answer];
      log('probData.choices.length:${probData.choices.length}');
      problem = [
        BlackBoard(20, 5, 10, 3, status: FrameStatus.soft),
        Sentence(21, 6,
            str: probData.sentence, direction: SentenceDirection.horizontal),
        for(var i=0;i<probData.choices.length;i++)
        InputBlock(22+i*2, 12, inputText: probData.choices[i]),
      ];
      await addAll(problem);
  }

  void resetTimer(){
    timer.time = game.gameState.time;
  }

  @override
  void onRemove() {
    //子供の参照が生きている問題
    // onRemoveの際に、子供が適切に削除されないのは既知の問題なので、Problemではなく,worldに直接新しい要素を加えよう
    final orphan = children.where((element) => element.parent==null).toList();
    log(
      orphan.toString()
      );
    super.onRemove();
  }

  
}
