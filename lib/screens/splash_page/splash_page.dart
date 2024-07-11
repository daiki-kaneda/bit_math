
import 'dart:async';

import 'package:bit_math/game.dart';
import 'package:bit_math/models/screen_status.dart';
import 'package:bit_math/provider/ad_provider/showing_ad_provider.dart';
import 'package:bit_math/utils/constants.dart';
import 'package:bit_math/utils/sprite_util.dart';

import 'package:flame/components.dart';
import 'package:flame/events.dart';
import 'package:flame_riverpod/flame_riverpod.dart';

//Powered by Flameなど書くべきかも？
class SplashPage extends Component with TapCallbacks,HasGameRef<BitmanMath>,RiverpodComponentMixin{

   @override
  FutureOr<void> onLoad() {
    final world = World();
    final cameraComponet = CameraComponent.withFixedResolution(
      width: gameWidth, 
      height: gameHeight,
      world: world);
    cameraComponet.viewfinder.anchor = Anchor.topLeft;
    addAll([world,cameraComponet]);
    //world.addAll(StageManager .getStage(ScreenStatus.splash));
    // replace more math related icon
    final bitmanSprite1 = getSprite(
      SpriteSheets.splashIcon,
       366,
       414,
        372,
        288);
    
    
    cameraComponet.viewport.addAll(
      [
      SpriteComponent(
      sprite:bitmanSprite1,
      size: Vector2(gameHeight/2,gameHeight/2*(288/372)),
      position: Vector2(gameWidth/2,gameHeight/2),
      anchor: Anchor.center
      )
      ]
    );
        }
  @override
  void onTapDown(TapDownEvent event) {
     game.router.pushNamed(ScreenStatus.home.name);
     // homepage has no ad
     ref.read(showingAdNotifierProvider.notifier).disableAd();
    super.onTapDown(event);
  }

  @override
  bool containsLocalPoint(Vector2 point) =>true;
}