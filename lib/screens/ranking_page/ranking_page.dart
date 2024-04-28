

import 'dart:async';
import 'dart:developer';

import 'package:bit_math/game.dart';
import 'package:bit_math/models/screen_status.dart';
import 'package:bit_math/screens/components/sentence_button/push_home_route_button.dart';
import 'package:bit_math/screens/components/stage_manager.dart';
import 'package:bit_math/screens/playing_page/HUD/joystick.dart';
import 'package:bit_math/screens/playing_page/stages/actor/bitman.dart';
import 'package:bit_math/screens/playing_page/stages/objects/sentence.dart';
import 'package:bit_math/utils/constants.dart';
import 'package:flame/components.dart';

class RankingPage extends Component with HasGameRef<BitmanMath>{

  List<int> topScores=[];

  @override
  FutureOr<void> onLoad() async{
    final world = World();
    final cameraComponent = CameraComponent.withFixedResolution(
      width: gameWidth,height: gameHeight,world: world
    );
    addAll([world,cameraComponent]);
    cameraComponent.viewfinder.anchor=Anchor.topLeft;

    try{
      topScores = await game.backendData.getTopGlobalScore();
      log('topScores:$topScores');
    }catch(e){
      log(e.toString());
    }

    world.addAll(StageManager.getStage(ScreenStatus.ranking));

    final bitman = Bitman(joystick: JoyStick(), screenStatus: ScreenStatus.ranking)
    ..position=Vector2(36*16+8, 9*16+4);
    world.add(bitman);

    cameraComponent.viewport.addAll([
      Sentence(7, 1, str: 'GLOBAL TOP SCORE', direction: SentenceDirection.horizontal),
      for(var i=0;i<5;i++)
      Sentence(13, 4+2*i.toDouble(), str: '${i+1}. ${
        topScores.elementAtOrNull(i)==null ? ''.padLeft(12,'-')
        :topScores.elementAtOrNull(i).toString().padLeft(12,'0')} ', direction: SentenceDirection.horizontal),
      PushHomeRouteButton(gridPosition: Vector2(22, 18), str: '@HOME')
    ]);
    
    return super.onLoad();
  }
}