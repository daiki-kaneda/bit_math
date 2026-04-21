import 'dart:async';


import 'package:bit_math/screens/playing_page/stages/block/ridable.dart';
import 'package:bit_math/screens/playing_page/stages/objects/problem/problem.dart';
import 'package:bit_math/screens/playing_page/stages/stage_block.dart';
import 'package:bit_math/screens/playing_page/stages/stage_object.dart';
import 'package:bit_math/utils/sprite_util.dart';
import 'package:flame/collisions.dart';
import 'package:flame/components.dart';

//Parent of SpawnBlock must be Problem Component
class SpawnBlock extends SpriteGroupComponent<ProblemStatus> with StageBlock implements StageObject,Ridable {
  SpawnBlock(double x,double y):gridPosition=Vector2(x, y),
  super(size: Vector2.all(16));
  @override
  final Vector2 gridPosition;

  @override
  final Vector2 velocity = Vector2.zero();

  @override
  FutureOr<void> onLoad() {
    sprites = {
      ProblemStatus.initial:getSprite(SpriteSheets.coloredTransparent, 647, 205, 14, 14),
      ProblemStatus.failure:getSprite(SpriteSheets.coloredTransparent, 647, 205, 14, 14),
      ProblemStatus.success:getSprite(SpriteSheets.coloredTransparent, 816, 187, 16, 16),
    };
    current = ProblemStatus.initial;
    position = Vector2(gridPosition.x*16, gridPosition.y*16);
    return super.onLoad();
  }

  @override
  void update(double dt) {
    scrollMove(dt);
    current = findParent<Problem>()!.status;
    final hasNotHitBox = children.whereType<RectangleHitbox>().toList().isEmpty;
    if(current == ProblemStatus.success){
     if(hasNotHitBox) add(RectangleHitbox(collisionType: CollisionType.passive));
    }else{
       removeAll(children.whereType<RectangleHitbox>().toList());
    }
    super.update(dt);
  }
}