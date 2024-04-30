
import 'dart:async';

import 'package:bit_math/screens/playing_page/HUD/joystick.dart';
import 'package:bit_math/screens/playing_page/playing_page.dart';
import 'package:bit_math/utils/constants.dart';
import 'package:flame/components.dart';
import 'package:flame/events.dart';
import 'package:flutter/material.dart';

class TouchDetector extends PositionComponent with DragCallbacks{

  bool hasJoystick = false;
  late JoyStick joyStick;
  @override
  FutureOr<void> onLoad() {
    position=Vector2(0, 0);
    size=Vector2(gameWidth,gameHeight);
    return super.onLoad();
  }

  @override
  void onDragStart(DragStartEvent event) {
    if(!hasJoystick){
      hasJoystick=true;
      final viewPort = findParent<PlayingPage>()!.camera.viewport;
      joyStick = JoyStick()
      ..margin=EdgeInsets.all(100);
      viewPort.add(joyStick);
    }
    super.onDragStart(event);
  }

  @override
  void onDragEnd(DragEndEvent event) {
    joyStick.removeFromParent();
    hasJoystick=false;
    super.onDragEnd(event);
  }

  
}