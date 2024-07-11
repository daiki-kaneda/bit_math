// sprites utils
 import 'package:flame/components.dart';
import 'package:flame/flame.dart';

enum SpriteSheets{
    coloredPacked,
    coloredTiles,
    coloredTransparentPacked,
    coloredTransparent,
    monochromeTransparent,
    monochrome,
    uiSprites,
    roguelikeDungeonTransparent,
    platforms,
    background,
    normalBackground,
    helpPage,
    chimney,
    splashIcon
  }

 Sprite getSprite(SpriteSheets sheet,double x,double y,double width,double height){
  switch(sheet){
    case SpriteSheets.coloredPacked:
    return Sprite(
      Flame.images.fromCache('colored_packed.png'),
      srcPosition: Vector2(x, y),
      srcSize: Vector2(width, height));
    case SpriteSheets.coloredTiles:
    return Sprite(
      Flame.images.fromCache('colored-tiles.png'),
      srcPosition: Vector2(x, y),
      srcSize: Vector2(width, height));
    case SpriteSheets.coloredTransparentPacked:
    return Sprite(
      Flame.images.fromCache('colored-transparent_packed.png'),
      srcPosition: Vector2(x, y),
      srcSize: Vector2(width, height));
    case SpriteSheets.coloredTransparent:
    return Sprite(
      Flame.images.fromCache('colored-transparent.png'),
      srcPosition: Vector2(x, y),
      srcSize: Vector2(width, height));
    case SpriteSheets.monochromeTransparent:
    return Sprite(
      Flame.images.fromCache('monochrome-transparent.png'),
      srcPosition: Vector2(x, y),
      srcSize: Vector2(width, height));
    case SpriteSheets.monochrome:
    return Sprite(
      Flame.images.fromCache('monochrome.png'),
      srcPosition: Vector2(x, y),
      srcSize: Vector2(width, height));
    case SpriteSheets.uiSprites:
    return Sprite(
      Flame.images.fromCache('ui_sprites.png'),
      srcPosition: Vector2(x, y),
      srcSize: Vector2(width, height));
    case SpriteSheets.roguelikeDungeonTransparent:
    return Sprite(
      Flame.images.fromCache('roguelikeDungeon_transparent.png'),
      srcPosition: Vector2(x, y),
      srcSize: Vector2(width, height));
    case SpriteSheets.platforms:
    return Sprite(
      Flame.images.fromCache('platforms.png'),
      srcPosition: Vector2(x, y),
      srcSize: Vector2(width, height));
    case SpriteSheets.background:
    return Sprite(
      Flame.images.fromCache('backgrounds.png'),
      srcPosition: Vector2(x, y),
      srcSize: Vector2(width, height));
    case SpriteSheets.normalBackground:
    return Sprite(
      Flame.images.fromCache('normal_background.png'),
      srcPosition: Vector2(x, y),
      srcSize: Vector2(width, height));
    case SpriteSheets.helpPage:
    return Sprite(
      Flame.images.fromCache('helppage.png'),
      srcPosition: Vector2(x, y),
      srcSize: Vector2(width, height));
    case SpriteSheets.chimney:
    return Sprite(
      Flame.images.fromCache('chimney.png'),
      srcPosition: Vector2(x, y),
      srcSize: Vector2(width, height));
    case SpriteSheets.splashIcon:
    return Sprite(
      Flame.images.fromCache('icon_foreground.png'),
      srcPosition: Vector2(x, y),
      srcSize: Vector2(width, height));
  }
 }