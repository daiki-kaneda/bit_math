
import 'dart:async';

import 'package:bit_math/screens/playing_page/stages/actor/bitman.dart';
import 'package:bit_math/utils/sprite_util.dart';
import 'package:flame/components.dart';
import 'package:flame/input.dart';
import 'package:flutter/widgets.dart';

class JumpButton extends ButtonComponent {
  JumpButton(this.bitman):super(
    button:SpriteComponent(
      sprite: getSprite(SpriteSheets.uiSprites, 569, 233, 80, 80),
      size: Vector2.all(16*5)
    ) ..opacity = 0.75,
    buttonDown:SpriteComponent(
      sprite: getSprite(SpriteSheets.uiSprites, 1, 791, 80, 80),
      size: Vector2.all(16*5)
    ),
    size: Vector2.all(16*5),
    position: Vector2(42*16,15*16)
    );

    final Bitman bitman;

  @override
  FutureOr<void> onLoad() {
    onPressed =  (){
      if(bitman.jumpCount>=2) return;

      bitman.current = BitmanStatus.jumping;
      bitman.isOnGround = false;
      bitman.jumpCount++;
      bitman.velocity.y = -bitman.jumpSpeed;

    };
    return super.onLoad();
  }
}