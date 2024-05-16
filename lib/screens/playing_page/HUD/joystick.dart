

import 'package:bit_math/utils/sprite_util.dart';
import 'package:flame/components.dart';
import 'package:flame/src/events/messages/drag_update_event.dart';
import 'package:flutter/painting.dart';

class JoyStick extends JoystickComponent {
  JoyStick():super(
    knob:SpriteComponent(
      size: Vector2.all(75),
      sprite: getSprite(
        SpriteSheets.uiSprites, 1, 1, 96, 97
        )
    )..opacity = 0.8,
    background:SpriteComponent(
      size: Vector2.all(110),
      sprite: getSprite(
        SpriteSheets.uiSprites, 1, 592, 160, 160
        )
    ),
    margin:const EdgeInsets.only(left: 55, bottom: 1) );

  @override 
  bool onDragUpdate(DragUpdateEvent event) {
    if(event.renderingTrace.isEmpty) return false;
    return super.onDragUpdate(event);
  }

}