
import 'dart:async';

import 'package:bit_math/screens/playing_page/playing_page.dart';
import 'package:bit_math/utils/sprite_util.dart';
import 'package:flame/components.dart';

enum LifeStatus{
  full,lost,half
}
class Life extends SpriteGroupComponent<LifeStatus>{
  Life(this.heartIndex,{super.position,super.size,super.anchor});
  final int heartIndex;

  @override
  FutureOr<void> onLoad() {
    current = LifeStatus.full;
    final lifeSprite1 = getSprite(SpriteSheets.coloredTransparent,715, 172, 14, 12 );
    final lifeSprite2 = getSprite(SpriteSheets.coloredTransparent,681, 172, 14, 12);
    final lifeSprite3 = getSprite(SpriteSheets.coloredTransparent,698, 172, 14, 12);

    sprites={
      LifeStatus.full:lifeSprite1,
      LifeStatus.lost:lifeSprite2,
      LifeStatus.half:lifeSprite3
    };
    return super.onLoad();
  }

  @override
  void update(double dt) {
    final currentLives = findParent<PlayingPage>()!.state.lives;

    if (currentLives >= heartIndex) {
      current = LifeStatus.full;
    } else if (currentLives >= heartIndex-1) {
      current = LifeStatus.half;
    } else {
      current = LifeStatus.lost;
    }
    super.update(dt);
  }
}




