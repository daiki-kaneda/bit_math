
import 'dart:async';

import 'package:bit_math/game.dart';
import 'package:bit_math/provider/ad_provider/showing_ad_provider.dart';
import 'package:bit_math/screens/pause_dialog/pause_dialog_route.dart';
import 'package:bit_math/utils/sprite_util.dart';
import 'package:flame/components.dart';
import 'package:flame/input.dart';
import 'package:flame_riverpod/flame_riverpod.dart';


//SpriteButtonComponent({Sprite? button, Sprite? buttonDown, void onPressed()?, Vector2? position, Vector2? size, Vector2? scale, double? angle, Anchor? anchor, Iterable<Component>? children, int? priority})
class BackButton extends SpriteButtonComponent with HasGameRef<BitmanMath>,RiverpodComponentMixin{
  BackButton({
    super.position,super.size
  });


  @override
  FutureOr<void> onLoad() {
    button = getSprite(SpriteSheets.coloredTransparentPacked, 40*16, 13*16, 16, 16);
    buttonDown = button..paint.color.withOpacity(0.5);
    onPressed =() {
      ref.read(showingAdNotifierProvider.notifier).enableAd();
      game.router.pushRoute(PauseDialogRoute());
      //game.router.pushReplacementNamed(ScreenStatus.result.name);
    };
    return super.onLoad();
  }
}