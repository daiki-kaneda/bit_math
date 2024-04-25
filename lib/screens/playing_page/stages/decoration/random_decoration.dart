
import 'dart:async';
import 'dart:math';


import 'package:bit_math/screens/playing_page/stages/decoration/decoration.dart';
import 'package:bit_math/screens/playing_page/stages/stage_object.dart';
import 'package:flame/components.dart';


class RandomDecoration extends PositionComponent implements StageObject{
  RandomDecoration(double x,double y,{required this.w,required this.status,required this.prob}):gridPosition=Vector2(x, y);

  @override
  final Vector2 gridPosition;

  @override
  final Vector2 velocity = Vector2.zero();

  final int w;

  final DecorationStatus status;

  final double prob; 

  @override
  FutureOr<void> onLoad() {
    final random = Random();
    assert(0<=prob && prob<1);
    for(var i=0;i<w;i++){
      if(random.nextDouble()<prob){
        add(Decoration(gridPosition.x+i, gridPosition.y, status: status));
      }
      }
    return super.onLoad();
  }

}