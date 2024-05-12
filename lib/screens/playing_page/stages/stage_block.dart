
//ステージ内のブロック（PlayingPageのobjectSpeedに従って、移動し、removeされた時には、位置を元に戻す）


import 'package:bit_math/screens/playing_page/stages/stage_object.dart';
import 'package:flame/components.dart';

mixin StageBlock on PositionComponent implements StageObject {
  void resetPosition() {
    position = Vector2(gridPosition.x*16,gridPosition.y*16);
  }

  void scrollMove(double dt){
    // don't move object but move viewport to represent bitman's motion

    // velocity.x = findParent<PlayingPage>()!.state.objectSpeed;
    // position +=  velocity * dt;
  }
}
