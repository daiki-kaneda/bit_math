//ステージ内のブロック（PlayingPageのobjectSpeedに従って、移動し、removeされた時には、位置を元に戻す）

import 'package:bit_math/screens/playing_page/playing_page.dart';
import 'package:bit_math/screens/playing_page/stages/stage_object.dart';
import 'package:flame/collisions.dart';
import 'package:flame/components.dart';

mixin PhysicalObject on PositionComponent implements StageObject {

  void scrollMove(double dt){
    // velocity.x = findParent<PlayingPage>()!.state.objectSpeed;
    // position +=  velocity * dt;
  }
}