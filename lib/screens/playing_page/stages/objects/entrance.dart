import 'dart:async';


import 'package:bit_math/game.dart';
import 'package:bit_math/screens/playing_page/stages/stage_block.dart';
import 'package:bit_math/screens/playing_page/stages/stage_object.dart';
import 'package:bit_math/utils/sprite_util.dart';
import 'package:flame/collisions.dart';
import 'package:flame/components.dart';

enum EntranceBlockStatus{
  locked,open
}
//Entranceは他の75✖️20のタイルのステージに飛ばすブロック
class Entrance extends SpriteGroupComponent<EntranceBlockStatus> with StageBlock,CollisionCallbacks,HasGameReference<BitmanMath> implements StageObject{
  Entrance(double x,double y,{required this.stageIndex,required this.status}):
  gridPosition=Vector2(x, y),super(size: Vector2.all(16));

  @override
  final Vector2 gridPosition;

  final int stageIndex;

  EntranceBlockStatus status;
  @override
  final velocity = Vector2.zero();

  @override
  FutureOr<void> onLoad() {
    sprites = {
      EntranceBlockStatus.open:getSprite(SpriteSheets.coloredTransparent, 35, 154, 14, 14),
      EntranceBlockStatus.locked:getSprite(SpriteSheets.coloredTransparent, 1, 154, 14, 14)
    };
    current = status;
    position = Vector2(gridPosition.x*16, gridPosition.y*16);
    add(RectangleHitbox(collisionType: CollisionType.passive));
    return super.onLoad();
  }

  @override
  void update(double dt) {
    scrollMove(dt);
    super.update(dt);
  }

  @override
  void onCollision(Set<Vector2> intersectionPoints, PositionComponent other) {
    // if(other is Bitman && current == EntranceBlockStatus.open){
    //   game. = game.state.copyWith(
    //     stageSelected: stageIndex
    //   );
    //  game.router.pushReplacement(Route(() => PlayingPage())); 
    // }
    super.onCollision(intersectionPoints, other);
  }
  
}