import 'package:bit_math/game.dart';
import 'package:bit_math/screens/pause_dialog/pause_dialog_page.dart';
import 'package:flame/components.dart';
import 'package:flame/game.dart';
import 'package:flame/rendering.dart';



/*
  PauseDialogRoute is responsible for wraping PauseDialogPage and excuting below 

  1. onpush: stop playing page time
             blur playing page,
             save score if current score is bestscore
             enable ad
  2. onpop: resume playing page time
            remove playing page blur
            disable ad
  
*/
class PauseDialogRoute extends Route with HasGameRef<BitmanMath>{
  PauseDialogRoute():super(PauseDialogPage.new,transparent: true);

   @override
  void onPush(Route? previousRoute) {
  
    game.appStateManager.setShowingAd(true);
    previousRoute!
    ..stopTime()
    ..addRenderEffect(
        PaintDecorator.grayscale(opacity: 0.5)..addBlur(3.0),
      );
    
    if(game.gameState.score>game.saveData.scoreData.bestScore){
      final saveDataApi = game.saveData;
      saveDataApi.scoreData = saveDataApi.scoreData.copyWith(
        bestScore:game.gameState.score);

      // game.backendData.updateUserData(
      //   game.backendData.userData.copyWith(bestScore: game.gameState.score)
      // );
    }
    
    // game.state = game.state.copyWith(
    //     timeSpeed: 0
    //   );
  }

  @override
  void onPop(Route nextRoute) {
    game.appStateManager.setShowingAd(false);
    nextRoute
    ..removeRenderEffect()
    ..resumeTime();

    // game.state = game.state.copyWith(
    //     timeSpeed: 1
    //   );
  }

}