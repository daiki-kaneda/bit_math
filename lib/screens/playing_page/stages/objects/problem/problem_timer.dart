import 'dart:async';

import 'package:bit_math/screens/playing_page/stages/objects/sentence.dart';
import 'package:bit_math/utils/sprite_util.dart';
import 'package:flame/components.dart';
import 'package:flame/effects.dart';
import 'package:flutter/material.dart';

// time
// level1:15s
// level2:10s
// level3:8s
// level4:7s
// level5:6s
// level6:5s
class ProblemTimer extends PositionComponent {
  ProblemTimer({required double x, required double y})
    : gridPosition = Vector2(x, y);

  final Vector2 gridPosition;

  late SpriteComponent sandglass;
  late Sentence timelimit;
  int time = 30;
  late EffectController countdown;
  @override
  FutureOr<void> onLoad() {
    sandglass = SpriteComponent(
      sprite: getSprite(
        SpriteSheets.coloredTransparentPacked,
        41 * 16,
        12 * 16,
        16,
        16,
      ),
      position: Vector2(gridPosition.x * 16, gridPosition.y * 16),
    );

    timelimit = _getTimeLimit();

    countdown = EffectController(
      infinite: true,
      duration: 1.0,
      onMax: () {
        if (time >= 1) {
          time -= 1;
          remove(timelimit);
          timelimit = _getTimeLimit();
          add(timelimit);
        }
      },
    );
    sandglass.add(ScaleEffect.to(Vector2.all(1.0), countdown));

    addAll([sandglass, timelimit]);
  }

  Sentence _getTimeLimit() {
    final color = time == 0
        ? Colors.red
        : time <= 3
        ? Colors.yellow
        : null;
    return Sentence(
      gridPosition.x + 1,
      gridPosition.y,
      str: time.toString().padLeft(2, '0'),
      direction: SentenceDirection.horizontal,
      color: color,
    );
  }
}
