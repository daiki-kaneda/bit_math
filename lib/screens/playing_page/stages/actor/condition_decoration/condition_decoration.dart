
import 'dart:async';
import 'dart:math';


import 'package:bit_math/screens/playing_page/playing_page.dart';
import 'package:bit_math/screens/playing_page/stages/actor/bitman.dart';
import 'package:bit_math/utils/sprite_util.dart';
import 'package:flame/components.dart';
import 'package:flame/effects.dart';
import 'package:flutter/material.dart';

//ConditionDecoration must have parent(Bitman or Enemy) that will be decorated.
class ConditionDecoration extends SpriteGroupComponent<AbnormalStatus>{
  ConditionDecoration():super(size: Vector2.all(14),anchor: Anchor.center);

  @override
  FutureOr<void> onLoad() {
    final poisonSprite = getSprite(SpriteSheets.coloredTransparent, 596, 188, 14, 14);
    final stunSprite = getSprite(SpriteSheets.coloredTransparentPacked, 576, 176, 16, 16);
     final healSprite = getSprite(SpriteSheets.coloredTransparentPacked, 624, 160, 16, 16);
    sprites={
      AbnormalStatus.poison:poisonSprite,
      AbnormalStatus.stun:stunSprite,
      AbnormalStatus.healing:healSprite
    };
    current = AbnormalStatus.normal;
    final bitman = findParent<World>()!.firstChild<Bitman>()!;
    priority = bitman.priority+1;
    return super.onLoad();
  }

  @override
  void update(double dt) {
    final bitman = findParent<World>()!.firstChild<Bitman>()!;
    current = bitman.condition;
     switch(current){
      case AbnormalStatus.poison:{
        if(children.whereType<ColorEffect>().isEmpty){
        add(ColorEffect(Colors.green,EffectController(
          duration: 1.5,
          repeatCount: 3,
          onMax: () {
            findParent<PlayingPage>()!.state.lives -=1;
          },
        ),
        opacityFrom: 0.1,
        opacityTo: 0.9,
        onComplete: () => bitman.condition = AbnormalStatus.normal,));
        }
      }
      case AbnormalStatus.stun:{
         if(children.whereType<ColorEffect>().isEmpty){
          final position = bitman.position.clone();
        add(ColorEffect(Colors.yellow, EffectController(
          duration: 0.01,
          repeatCount: 100,
          onMax: () {
            bitman.position = position;
          },
        ),opacityFrom: 0.1,
        opacityTo: 0.9,
        onComplete: () => bitman.condition = AbnormalStatus.normal,));
        }
      }
      case AbnormalStatus.healing:{
         if(children.whereType<ColorEffect>().isEmpty){
        add(OpacityEffect.fadeOut( EffectController(
          duration: 0.3,
          alternate: true,
        ),onComplete: () => bitman.condition = AbnormalStatus.normal,));
        add(MoveAlongPathEffect(Path()..addArc(Rect.fromCenter(center: const Offset(-7, 0), width: 14, height: 14), 0, 2*pi), EffectController(
          duration: 0.6,
          alternate: false
        )));
        }
      }
      default:{
        removeAll(children.whereType<ColorEffect>());
      }
    }
    
    position = Vector2(bitman.position.x, bitman.position.y-8);
    
    super.update(dt);
  }
}