
import 'dart:async';

import 'package:bit_math/game.dart';
import 'package:bit_math/screens/home_page/home_page.dart';
import 'package:bit_math/screens/pause_dialog/pause_dialog_page.dart';
import 'package:bit_math/screens/playing_page/stages/objects/sentence.dart';
import 'package:bit_math/utils/sprite_util.dart';
import 'package:flame/components.dart';
import 'package:flame/events.dart';
import 'package:flame/game.dart';
import 'package:flutter/material.dart' hide Route;

class HomeButton extends SpriteComponent with HasGameRef<BitmanMath>,TapCallbacks{

  HomeButton({super.sprite,});

  late TextComponent hint;
  @override
  FutureOr<void> onLoad() {
    hint = TextComponent(
        text: 'back to start page',
        textRenderer: TextPaint(
          style:const TextStyle(
            fontSize: 16,
            color: Colors.grey)
        ),
        position: Vector2(game.canvasSize.x/2,game.canvasSize.y*2/3),
        anchor: Anchor.center,
        );

    anchor = Anchor.center;
    return super.onLoad();
  }
  

  @override
  void onTapDown(TapDownEvent event) {
    hint.removeFromParent();
    scale = Vector2.all(0.85);
    findParent<PauseDialogPage>()!.add(hint);
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
    scale = Vector2.all(1);
     game.router.pushReplacement(Route(() => HomePage()));
    super.onTapUp(event);
  }
}