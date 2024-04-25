import 'package:bit_math/screens/playing_page/stages/stages_manager/stages/layer/stage_layer.dart';
import 'package:flame/components.dart';


class BackgroundDecorationLayer implements StageLayer{
  BackgroundDecorationLayer(this.layer);
  @override
  final int priority = 1;

  @override
  final List<Component> layer;
}