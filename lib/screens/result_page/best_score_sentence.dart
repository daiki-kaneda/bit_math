
import 'dart:developer';

import 'package:bit_math/provider/save_data_provider/save_data_helper_provider.dart';
import 'package:bit_math/screens/playing_page/stages/objects/sentence.dart';
import 'package:flame/components.dart';
import 'package:flame_riverpod/flame_riverpod.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class BestScoreSentence extends Component with RiverpodComponentMixin{

  int bestScore =0;

  @override
  void onMount() {
    addToGameWidgetBuild(()async{
      if((ref.read(saveDataProvider)).hasValue&&(ref.read(saveDataProvider)).value!.scoreData.bestScore.isNotEmpty){
      bestScore = ref.watch(saveDataProvider).value!.scoreData.bestScore[0];
      log('bestScore:$bestScore');
      add(Sentence(18, 14, str: 'BEST SCORE:$bestScore', direction: SentenceDirection.horizontal));
      }
    });
    super.onMount();
  }
}