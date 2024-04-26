

import 'package:bit_math/utils/sprite_util.dart';
import 'package:flame/components.dart';
import 'package:flutter/painting.dart';

class JoyStick extends JoystickComponent {
  JoyStick():super(
    knob:SpriteComponent(
      size: Vector2.all(80),
      sprite: getSprite(
        SpriteSheets.uiSprites, 1, 1, 96, 97
        )
    )..opacity = 0.5,
    background:SpriteComponent(
      size: Vector2.all(110),
      sprite: getSprite(
        SpriteSheets.uiSprites, 1, 592, 160, 160
        )
    ),
    margin:const EdgeInsets.only(left: 50, bottom: 2) );
}