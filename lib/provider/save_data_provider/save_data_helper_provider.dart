import 'dart:developer';

import 'package:bit_math/models/score_data.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'package:bit_math/provider/save_data_provider/save_data_helper.dart';
import 'package:shared_preferences/shared_preferences.dart';

part 'save_data_helper_provider.g.dart';

@riverpod
class SaveDataNotifier extends _$SaveDataNotifier {
  @override
  FutureOr<SaveDataHelper> build() async{
    final preferences = await SharedPreferences.getInstance();
    final helper = SaveDataHelper(preferences);
    await helper.loadData();
    return helper;
  }

  // update score data logic
  Future<void> updateScoreData(
    int newScore,
    int numSolveAdd,
    int numSolveSub,
    int numSolveMul,
    int numSolveDiv)async{
    final previousState = (await future);
    final preScore = previousState.scoreData;
    log('preScore:$preScore');
    final newBestScores = ([...previousState.scoreData.bestScore,newScore])
    ..sort((a,b)=>b.compareTo(a));
    previousState.scoreData = preScore.copyWith(
      bestScore: newBestScores,
      numSolveAdd: preScore.numSolveAdd+numSolveAdd,
      numSolveSub: preScore.numSolveSub+numSolveSub,
      numSolveMul: preScore.numSolveMul+numSolveMul,
      numSolveDiv: preScore.numSolveDiv+numSolveDiv);
  }

  // isSound toggle logic
  Future<void> isSoundToggle()async{
    final previousState = await future;
    log('preIsSound:${previousState.setting.isSound}');
    previousState.setting = previousState.setting
    .copyWith(isSound: !previousState.setting.isSound);
  }

  

}