
import 'dart:async';

import 'package:bit_math/game.dart';
import 'package:bit_math/screens/home_page/home_page.dart';
import 'package:bit_math/screens/pause_dialog/pause_dialog_page.dart';
import 'package:bit_math/utils/sprite_util.dart';
import 'package:flame/components.dart';
import 'package:flame/events.dart';
import 'package:flame/game.dart';
import 'package:flutter/material.dart';

class ResumeButton extends SpriteComponent with HasGameRef<BitmanMath>,TapCallbacks{

  ResumeButton({super.sprite,});

  late TextComponent hint;
  @override
  FutureOr<void> onLoad() {
    hint = TextComponent(
        text: 'resume',
        textRenderer: TextPaint(
          style:const TextStyle(
            fontSize: 16,
            color: Colors.grey)
        ),
        position: Vector2(game.canvasSize.x/2,game.canvasSize.y*1/5),
        anchor: Anchor.center,
        );
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
    game.router.pop();
    super.onTapUp(event);
  }
}