
import 'dart:async';

import 'package:bit_math/game.dart';
import 'package:bit_math/models/screen_status.dart';
import 'package:bit_math/utils/constants.dart';
import 'package:bit_math/utils/sprite_util.dart';

import 'package:flame/components.dart';
import 'package:flame/events.dart';

//Powered by Flameなど書くべきかも？
class SplashPage extends Component with TapCallbacks,HasGameRef<BitmanMath>{
   @override
  FutureOr<void> onLoad() {
    // this page has not ad
    game.appStateManager.setShowingAd(false);
    final world = World();
    final cameraComponet = CameraComponent.withFixedResolution(
      width: gameWidth, 
      height: gameHeight,
      world: world);
    cameraComponet.viewfinder.anchor = Anchor.topLeft;
    addAll([world,cameraComponet]);
    //world.addAll(StageManager.getStage(ScreenStatus.splash));
    // replace more math related icon
    final bitmanSprite1 = getSprite(
      SpriteSheets.coloredTransparent,
       308,
       124,
        12,
        11);
    
    
    cameraComponet.viewport.addAll(
      [
      SpriteComponent(
      sprite:bitmanSprite1,
      size: Vector2.all(gameHeight/2),
      position: Vector2(gameWidth/2,gameHeight/2),
      anchor: Anchor.center
      )
      ]
    );
        }
  @override
  void onTapDown(TapDownEvent event) {
     game.router.pushNamed(ScreenStatus.home.name);
    super.onTapDown(event);
  }

  @override
  bool containsLocalPoint(Vector2 point) =>true;
}