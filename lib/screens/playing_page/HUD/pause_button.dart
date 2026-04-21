import 'dart:async';

import 'package:bit_math/game.dart';
import 'package:bit_math/provider/ad_provider/showing_ad_provider.dart';
import 'package:bit_math/utils/sprite_util.dart';
import 'package:flame/components.dart';
import 'package:flame/input.dart';
import 'package:flame_riverpod/flame_riverpod.dart';

class PauseButton extends ButtonComponent with HasGameRef<BitmanMath>,RiverpodComponentMixin{
  PauseButton():super(
    button:SpriteComponent(
      sprite: getSprite(SpriteSheets.uiSprites, 1, 101, 48, 48),
      size: Vector2.all(30),
    ),
    buttonDown:SpriteComponent(
      sprite: getSprite(SpriteSheets.uiSprites, 768, 591, 48, 48),
      size: Vector2.all(30),
      
    ),
    size: Vector2.all(30),
    anchor: const Anchor(0.5, 0.1)
    );

  @override
  FutureOr<void> onLoad() {
    onPressed = (){
      final bitmanGame = (game);
      bitmanGame.router.pushNamed('pause-dialog');
      };
      // pause page has ad
      ref.read(showingAdProvider.notifier).enableAd();
    return super.onLoad();
  }

}