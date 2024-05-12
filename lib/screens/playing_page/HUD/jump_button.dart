
import 'dart:async';

import 'package:bit_math/screens/playing_page/stages/actor/bitman.dart';
import 'package:bit_math/utils/sprite_util.dart';
import 'package:flame/components.dart';
import 'package:flame/input.dart';

class JumpButton extends ButtonComponent {
  JumpButton(this.bitman):super(
    button:SpriteComponent(
      sprite: getSprite(SpriteSheets.uiSprites, 569, 233, 80, 80),
      size: Vector2.all(16*6)
    ) ..opacity = 0.75,
    buttonDown:SpriteComponent(
      sprite: getSprite(SpriteSheets.uiSprites, 1, 791, 80, 80),
      size: Vector2.all(16*6)
    ),
    size: Vector2.all(16*6),
    position: Vector2(41*16,14*16-2)
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