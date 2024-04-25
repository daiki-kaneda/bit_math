import 'dart:async';


import 'package:bit_math/screens/playing_page/stages/actor/bitman.dart';
import 'package:bit_math/screens/playing_page/stages/item/item.dart';
import 'package:bit_math/screens/playing_page/stages/stage_block.dart';
import 'package:bit_math/screens/playing_page/stages/stage_object.dart';
import 'package:bit_math/utils/sprite_util.dart';
import 'package:flame/collisions.dart';
import 'package:flame/components.dart';
import 'package:flame/effects.dart';
import 'package:flutter/material.dart';



class TransformItem extends SpriteComponent with StageBlock implements StageObject,StageItem{
  TransformItem(double x,double y,{required this.status}):
  gridPosition=Vector2(x, y),super(size: Vector2.all(16),anchor: Anchor.center);

  @override
  final Vector2 gridPosition;

  final BitmanColor status;
  @override
  final velocity = Vector2.zero();

  @override
  FutureOr<void> onLoad() {
    switch(status){
      case BitmanColor.normalBlue:{
      sprite = getSprite(SpriteSheets.coloredTransparentPacked, 528, 208, 16, 16);
      add(ColorEffect(Colors.blue, EffectController(
        duration: 1.0,
        alternate: true,
        infinite: true
      ),opacityFrom: 0.5,opacityTo: 0.9));
      }
      case BitmanColor.speedYellow:{
      sprite = getSprite(SpriteSheets.coloredTransparentPacked, 528, 208, 16, 16);
      add(ColorEffect(Colors.yellow, EffectController(
        duration: 1.0,
        alternate: true,
        infinite: true
      ),opacityFrom: 0.5,opacityTo: 0.9));
      }
   
      case BitmanColor.floatGreen:{
      sprite = getSprite(SpriteSheets.coloredTransparentPacked, 528, 208, 16, 16);
      add(ColorEffect(Colors.green, EffectController(
        duration: 1.0,
        alternate: true,
        infinite: true
      ),opacityFrom: 0.5,opacityTo: 0.9));
      }

    }
    position = Vector2(gridPosition.x*16+8, gridPosition.y*16+8);
    add(CircleHitbox(collisionType: CollisionType.passive));
    add(ScaleEffect.to(Vector2.all(1.1), EffectController(
      duration: 1.0,
      alternate: true,
      infinite: true
    )));
    add(OpacityEffect.to(0.85, EffectController(
      duration: 1.0,
      alternate: true,
      infinite: true
    )));
    return super.onLoad();
  }

  @override
  void update(double dt) {
    scrollMove(dt);
    super.update(dt);
  }
}