
import 'package:bit_math/screens/playing_page/stages/background/stage_background.dart';
import 'package:bit_math/screens/playing_page/stages/stages_manager/stages/layer/stage_layer.dart';
import 'package:flame/components.dart';


class BackgroundLayer implements StageLayer{
  BackgroundLayer({this.status=BackgroundStatus.normal}):layer=[
    StageBackground(status)
  ];

  @override
  final int priority = 0;

  final BackgroundStatus status;

  @override
  final List<Component> layer;
}