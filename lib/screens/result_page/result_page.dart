
import 'dart:async';

import 'package:bit_math/game.dart';
import 'package:bit_math/models/screen_status.dart';
import 'package:bit_math/provider/app_review_provider/iar_provider.dart';
import 'package:bit_math/screens/components/sentence_button/push_home_route_button.dart';
import 'package:bit_math/screens/components/sentence_button/push_play_route_button.dart';
import 'package:bit_math/screens/components/stage_manager.dart';
import 'package:bit_math/screens/playing_page/HUD/joystick.dart';
import 'package:bit_math/screens/playing_page/stages/actor/bitman.dart';
import 'package:bit_math/screens/playing_page/stages/objects/sentence.dart';
import 'package:bit_math/screens/result_page/best_score_sentence.dart';
import 'package:bit_math/utils/constants.dart';
import 'package:flame/components.dart';
import 'package:flame_riverpod/flame_riverpod.dart';

class ResultPage extends Component with HasGameReference<BitmanMath>,RiverpodComponentMixin{
  @override
  FutureOr<void> onLoad() async{

    //   // game.backendData.updateUserData(
    //   //   game.backendData.userData.copyWith(bestScore: game.gameState.score)
    //   // );
    // }

    final world = World();
    final cameraComponent = CameraComponent.withFixedResolution(width: gameWidth, height: gameHeight,world: world);
    addAll([world,cameraComponent]);
    cameraComponent.viewfinder.anchor= Anchor.topLeft;

    final stage = StageManager.getStage(ScreenStatus.result);
    world.addAll(
      stage
    );

    final bitman = Bitman(
      joystick: JoyStick(),
      screenStatus: ScreenStatus.result)..position=Vector2(24*16+8, 10*16+4);
    world.add(bitman);
    // add score text and home button,retry button
    cameraComponent.viewport.addAll([
      Sentence(19, 8, str: 'SCORE:${game.gameState.score}', direction: SentenceDirection.horizontal),
      BestScoreSentence(),
      PushHomeRouteButton(gridPosition: Vector2(14, 18),
      str: '@HOME'),
      PushPlayRouteButton(gridPosition: Vector2(30, 18),
      str: 'uRETRY'),
    ]);

    return super.onLoad();
  }

  @override
  void onMount() {
    addToGameWidgetBuild(()async{
        //review request
        Future.delayed(const Duration(seconds: 1),
        ()=>ref.read(inAppReviewProvider.notifier).requestReview());
    });
    super.onMount();
  }

}