

import 'dart:async';
import 'dart:math';

import 'package:bit_math/game.dart';
import 'package:bit_math/provider/ad_provider/showing_ad_provider.dart';
import 'package:bit_math/screens/ranking_page/ranking_page.dart';
import 'package:bit_math/utils/sprite_util.dart';
import 'package:flame/components.dart';
import 'package:flame/effects.dart';
import 'package:flame/game.dart';
import 'package:flame/input.dart';
import 'package:flame_riverpod/flame_riverpod.dart';


//SpriteButtonComponent({Sprite? button, Sprite? buttonDown, void onPressed()?, Vector2? position, Vector2? size, Vector2? scale, double? angle, Anchor? anchor, Iterable<Component>? children, int? priority})
class RankingButton extends SpriteButtonComponent with HasGameRef<BitmanMath>,RiverpodComponentMixin{
  RankingButton({
    super.position,super.size
  });


  @override
  FutureOr<void> onLoad() {
    button = getSprite(SpriteSheets.coloredTransparentPacked, 40*16, 16*16, 16, 16);
    buttonDown = button..paint.color.withOpacity(0.5);
    anchor=Anchor.center;
    onPressed =() {
      add(
        RotateEffect.by(2*pi, EffectController(
          duration: 0.3
        ),onComplete: () {
          ref.read(showingAdProvider.notifier).enableAd();
          game.router.pushRoute(Route(() => RankingPage()));
        },)
      );
    };
    return super.onLoad();
  }
}