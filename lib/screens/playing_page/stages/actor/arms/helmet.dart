import 'dart:async';

import 'package:bit_math/screens/playing_page/stages/actor/bitman.dart';
import 'package:bit_math/utils/sprite_util.dart';
import 'package:flame/components.dart';


class Helmet extends SpriteGroupComponent<BitmanHelmet>{
  Helmet():super(size: Vector2.all(16),anchor: Anchor.center);

  int durability = 1;
  @override
  FutureOr<void> onLoad() {
    final strawHatSprite = getSprite(SpriteSheets.coloredTransparentPacked, 16*46, 32, 16, 16);
    final capeSprite = getSprite(SpriteSheets.coloredTransparentPacked, 16*47, 32, 16, 16);
    final hardHatSprite = getSprite(SpriteSheets.coloredTransparent, 647, 1, 14, 14);
    final helmetSprite = getSprite(SpriteSheets.coloredTransparent, 631, 1, 12, 14);
    final armorSprite = getSprite(SpriteSheets.coloredTransparentPacked, 560, 0, 16, 16);
    final ringSprite = getSprite(SpriteSheets.coloredTransparentPacked, 738, 98, 12, 12);
    sprites={
      BitmanHelmet.strawHat:strawHatSprite,
      BitmanHelmet.cape:capeSprite,
      BitmanHelmet.hardHat:hardHatSprite,
      BitmanHelmet.helmet:helmetSprite,
      BitmanHelmet.armor:armorSprite,
      BitmanHelmet.ring:ringSprite,
    };
    final bitman = findParent<World>()!.firstChild<Bitman>()!;
    priority = bitman.priority+1;
    
    current = BitmanHelmet.none;
    return super.onLoad();
  }

  @override
  void update(double dt) {
    final bitman = findParent<World>()!.firstChild<Bitman>()!;
    current = bitman.helmet;
    bitman.hasHelmet = current != BitmanHelmet.none;
    position = bitman.position; // helmetの種類によって場合分けしなきゃ
    if(durability<0){
      bitman.helmet=BitmanHelmet.none;
    }
    super.update(dt);
  }

  void setDurability(BitmanHelmet status){
    switch(status){
      case BitmanHelmet.hardHat:
      durability = 5;
      case BitmanHelmet.helmet:
      durability = 7;
      case BitmanHelmet.armor:
      durability = 10;
      default:
    }
  }
}