import 'dart:async';

import 'package:bit_math/game.dart';
import 'package:bit_math/screens/pause_dialog/pause_dialog_page.dart';
import 'package:bit_math/utils/sprite_util.dart';
import 'package:flame/components.dart';
import 'package:flame/events.dart';
import 'package:flutter/material.dart';

class SoundToggle extends SpriteGroupComponent<bool> with HasGameRef<BitmanMath>,TapCallbacks{

  late TextComponent hint;
  @override
  FutureOr<void> onLoad() {
    hint = hint = TextComponent(
        text: 'mute setting',
        textRenderer: TextPaint(
          style:const TextStyle(
            fontSize: 16,
            color: Colors.grey)
        ),
        position: Vector2(game.canvasSize.x/2,game.canvasSize.y*2/3),
        anchor: Anchor.center,
        );
    current = game.saveData.setting.isSound;
    sprites = {
      true: getSprite(SpriteSheets.uiSprites, 767, 51, 48, 48),
      false:getSprite(SpriteSheets.uiSprites, 51, 101, 48, 48)
    };
    anchor = Anchor.center;
    return super.onLoad();
  }

  @override
  void onTapDown(TapDownEvent event) {
    findParent<PauseDialogPage>()!.add(hint);
    scale = Vector2.all(0.85);
    super.onTapDown(event);
  }

  @override
  void onTapCancel(TapCancelEvent event) {
    hint.removeFromParent();
    scale = Vector2.all(1);
    super.onTapCancel(event);
  }

  @override
  void onTapUp(TapUpEvent event) {
    hint.removeFromParent();
    
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