

import 'dart:async';
import 'dart:developer';

import 'package:bit_math/game.dart';
import 'package:bit_math/models/screen_status.dart';
import 'package:bit_math/provider/save_data_provider/save_data_helper_provider.dart';
import 'package:bit_math/screens/components/sentence_button/push_home_route_button.dart';
import 'package:bit_math/screens/components/stage_manager.dart';
import 'package:bit_math/screens/playing_page/HUD/joystick.dart';
import 'package:bit_math/screens/playing_page/stages/actor/bitman.dart';
import 'package:bit_math/screens/playing_page/stages/objects/sentence.dart';
import 'package:bit_math/utils/constants.dart';
import 'package:flame/components.dart';
import 'package:flame_riverpod/flame_riverpod.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class RankingPage extends Component with HasGameReference<BitmanMath>,RiverpodComponentMixin{

  List<int> topScores=[];
  final world = World();
  late final CameraComponent cameraComponent;

  @override
  FutureOr<void> onLoad() async{
    final world = World();
    cameraComponent = CameraComponent.withFixedResolution(
      width: gameWidth,height: gameHeight,world: world
    );
    addAll([world,cameraComponent]);
    cameraComponent.viewfinder.anchor=Anchor.topLeft;

    try{
      // topScores = await game.backendData.getTopGlobalScore();
      log('topScores:$topScores');
    }catch(e){
      log(e.toString());
    }

    world.addAll(StageManager.getStage(ScreenStatus.ranking));

    final bitman = Bitman(joystick: JoyStick(), screenStatus: ScreenStatus.ranking)
    ..position=Vector2(36*16+8, 9*16+4);
    world.add(bitman);

    cameraComponent.viewport.addAll([
      Sentence(7, 1, str: 'cTOP SCOREc', direction: SentenceDirection.horizontal),
      // Sentence(12, 14, str: 'YOU:${(ref.read(saveDataNotifierProvider).value!.scoreData.bestScore[0])..toString().padLeft(12,'0')}', direction: SentenceDirection.horizontal),
      PushHomeRouteButton(gridPosition: Vector2(22, 18), str: '@HOME')
    ]);
    
    return super.onLoad();
  }

  @override
  void onMount() {
    addToGameWidgetBuild(()async{
      if((ref.read(saveDataProvider).hasValue)){
      topScores = ref.read(saveDataProvider).value!.scoreData.bestScore;
      }
      cameraComponent.viewport.addAll(
        [
        for(var i=0;i<5;i++)
        Sentence(13, 4+2*i.toDouble(), str: '${i+1}. ${
        topScores.elementAtOrNull(i)==null ? ''.padLeft(12,'-')
        :topScores.elementAtOrNull(i).toString().padLeft(12,'0')} ', direction: SentenceDirection.horizontal),
        ]
      );
      
    });
    super.onMount();
  }
}