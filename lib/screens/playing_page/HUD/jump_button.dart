
import 'dart:async';

import 'package:bit_math/provider/audio_provider/audio_provider.dart';
import 'package:bit_math/screens/playing_page/stages/actor/bitman.dart';
import 'package:bit_math/utils/sprite_util.dart';
import 'package:flame/components.dart';
import 'package:flame/input.dart';
import 'package:flame_riverpod/flame_riverpod.dart';
import 'package:flutter/material.dart';

class JumpButton extends ButtonComponent with RiverpodComponentMixin{
  JumpButton(this.bitman):super(
    button:SpriteComponent(
      sprite: getSprite(SpriteSheets.uiSprites, 569, 233, 80, 80),
      size: Vector2.all(16*6)
    ) ..opacity = 0.75,
    buttonDown:SpriteComponent(
      sprite: getSprite(SpriteSheets.uiSprites, 1, 791, 80, 80),
      size: Vector2.all(16*6)
    ),
    size: Vector2.all(16*6),
    position: Vector2(41*16,14*16-2)
    );

    final Bitman bitman;

    //late TextComponent buttonCountHint;

  @override
  FutureOr<void> onLoad() {
    onPressed =  (){
      if(bitman.jumpCount>=2) return;
      // if(bitman.jumpCount==0){
      //   ref.read(audioPlayerProvider.notifier)
      //   .play(AudioStatus.jump1);
      // }else if(bitman.jumpCount==1){
      //   ref.read(audioPlayerProvider.notifier)
      //   .play(AudioStatus.jump2);
      // }
      bitman.current = BitmanStatus.jumping;
      bitman.isOnGround = false;
      bitman.jumpCount++;
      bitman.velocity.y = -bitman.jumpSpeed;
    };
    // buttonCountHint = TextComponent(
    //   text: '2/2',textRenderer: TextPaint(
    //     style:const TextStyle(
    //       fontSize: 16,
    //       color: Color.fromRGBO(0, 0, 0, 0.5)
    //     
    //   ))
    // ..anchor=Anchor.bottomRight
    // ..position=Vector2(6*16,6*16)
    // ..priority=button!.priority+1;
    //add(buttonCountHint);
    return super.onLoad();
  }

  @override
  void update(double dt) {
    if(bitman.jumpCount==2){
      (button as SpriteComponent).paint.colorFilter = const ColorFilter.mode(Color.fromRGBO(255, 0, 0, 0.15), BlendMode.srcATop);
      //buttonCountHint.text='0/2';
    }else if(bitman.jumpCount==1){
      (button as SpriteComponent).paint.colorFilter = const ColorFilter.mode(Color.fromRGBO(0, 0, 255, 0), BlendMode.srcATop);
      //(button as SpriteComponent).paint.colorFilter = const ColorFilter.mode(Color.fromRGBO(244, 230, 79, 0.15), BlendMode.srcATop);
      //buttonCountHint.text='1/2';
    }else{
      (button as SpriteComponent).paint.colorFilter = const ColorFilter.mode(Color.fromRGBO(0, 0, 255, 0), BlendMode.srcATop);
      //(button as SpriteComponent).paint.colorFilter = const ColorFilter.mode(Color.fromRGBO(0, 0, 255, 0.15), BlendMode.srcATop);
      //buttonCountHint.text='2/2';
    }
    super.update(dt);
  }
}