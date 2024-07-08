
import 'dart:async';

import 'package:bit_math/game.dart';
import 'package:bit_math/models/screen_status.dart';
import 'package:bit_math/provider/ad_provider/showing_ad_provider.dart';
import 'package:bit_math/screens/components/sentence_button/push_play_route_button.dart';
import 'package:bit_math/screens/components/stage_manager.dart';
import 'package:bit_math/screens/home_page/ui/ranking_button.dart';
import 'package:bit_math/screens/playing_page/HUD/joystick.dart';
import 'package:bit_math/screens/playing_page/stages/actor/bitman.dart';
import 'package:bit_math/utils/constants.dart';
import 'package:flame/components.dart';
import 'package:flame_riverpod/flame_riverpod.dart';

class HomePage extends Component with HasGameRef<BitmanMath>,RiverpodComponentMixin{

  @override
  FutureOr<void> onLoad() {
    
    final world = World();
    final cameraComponet = CameraComponent.withFixedResolution(
      width: gameWidth, 
      height: gameHeight,
      world: world);
    cameraComponet.viewfinder.anchor = Anchor.topLeft;
    addAll([world,cameraComponet]);
    world.addAll(StageManager.getStage(ScreenStatus.home));
    final bitman = Bitman(
      joystick: JoyStick(),
      screenStatus: ScreenStatus.home)
      ..position=Vector2(25*16+8, 15*16+4)
      ;
    world.add(bitman
      );
    cameraComponet.viewport.addAll(
      [
        RankingButton(position: Vector2(16*4, 16*3),size: Vector2.all(24)),
        //ShopButton(position: Vector2(16*6, 16*3),size: Vector2.all(24)),
        PushPlayRouteButton(gridPosition: Vector2(21, 10),
         str: 'S T A R T')
      ]
    );
    return super.onLoad();
  }

  @override
  void onRemove() {
    // TODO: implement onRemove
    super.onRemove();
  }


}