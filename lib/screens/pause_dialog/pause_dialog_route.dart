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
  2. onpop: resume playing page time
            remove playing page blur

*/
class PauseDialogRoute extends Route with HasGameRef<BitmanMath>{
  PauseDialogRoute():super(PauseDialogPage.new,transparent: true);

   @override
  void onPush(Route? previousRoute) {
    previousRoute!
    ..stopTime()
    ..addRenderEffect(
        PaintDecorator.grayscale(opacity: 0.5)..addBlur(3.0),
      );
    
    // game.state = game.state.copyWith(
    //     timeSpeed: 0
    //   );
  }

  @override
  void onPop(Route nextRoute) {
    nextRoute
    ..removeRenderEffect()
    ..resumeTime();

    // game.state = game.state.copyWith(
    //     timeSpeed: 1
    //   );
  }

}