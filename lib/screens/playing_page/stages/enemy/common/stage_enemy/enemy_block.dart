import 'dart:async';

import 'package:bit_math/screens/playing_page/stages/block/ridable.dart';
import 'package:bit_math/screens/playing_page/stages/stage_block.dart';
import 'package:bit_math/screens/playing_page/stages/stage_object.dart';
import 'package:bit_math/utils/sprite_util.dart';

import 'package:flame/collisions.dart';
import 'package:flame/components.dart';

//Parent of LockedBlock must be Problem Component
class EnemyLockedBlock extends SpriteComponent with StageBlock implements StageObject,Ridable {
  EnemyLockedBlock(double x,double y):gridPosition=Vector2(x, y),
  super(size: Vector2.all(16));
  @override
  final Vector2 gridPosition;

  @override
  final Vector2 velocity = Vector2.zero();

  @override
  FutureOr<void> onLoad() {
    sprite = getSprite(SpriteSheets.coloredTransparent,391, 0, 16, 16);

    position = Vector2(gridPosition.x*16, gridPosition.y*16);
    add(RectangleHitbox(collisionType: CollisionType.passive));
    return super.onLoad();
  }

  @override
  void update(double dt) {
    scrollMove(dt);
    super.update(dt);
  }

}