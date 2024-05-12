import 'dart:async';

import 'package:bit_math/game.dart';
import 'package:bit_math/utils/sprite_util.dart';
import 'package:flame/components.dart';
import 'package:flame/events.dart';

class SoundToggle extends SpriteGroupComponent<bool> with HasGameRef<BitmanMath>,TapCallbacks{

  @override
  FutureOr<void> onLoad() {
    current = game.saveData.setting.isSound;
    sprites = {
      true: getSprite(SpriteSheets.uiSprites, 767, 51, 48, 48),
      false:getSprite(SpriteSheets.uiSprites, 51, 101, 48, 48)
    };
    return super.onLoad();
  }

  @override
  void onTapDown(TapDownEvent event) {
    scale = Vector2.all(0.85);
    super.onTapDown(event);
  }

  @override
  void onTapCancel(TapCancelEvent event) {
    scale = Vector2.all(1);
    super.onTapCancel(event);
  }

  @override
  void onTapUp(TapUpEvent event) {
    scale = Vector2.all(1);
    if(current!){
       current = false;
       game.saveData.setting = game.saveData.setting.copyWith(
        isSound: false
       );
    }else{
      current = true;
      game.saveData.setting = game.saveData.setting.copyWith(
        isSound: true
       );
    }
    super.onTapUp(event);
  }
}