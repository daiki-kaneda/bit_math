

import 'package:bit_math/screens/playing_page/stages/stages_manager/stages/layer/background_decoration_layer.dart';
import 'package:bit_math/screens/playing_page/stages/stages_manager/stages/layer/background_layer.dart';
import 'package:bit_math/screens/playing_page/stages/stages_manager/stages/layer/decoration_layer.dart';
import 'package:bit_math/screens/playing_page/stages/stages_manager/stages/layer/enemy_layer.dart';
import 'package:bit_math/screens/playing_page/stages/stages_manager/stages/layer/object_layer.dart';
import 'package:bit_math/screens/playing_page/stages/stages_manager/stages/layer/platform_layer.dart';
import 'package:bit_math/screens/playing_page/stages/stages_manager/stages/layer/problem_layer.dart';
import 'package:flame/components.dart';

class StageComponents{

  StageComponents(
    this.stageIndex,{
    required this.background,
    required this.backgroundDecorations,
    required this.problems,
    required this.platforms,
    required this.enemies,
    required this.objects,
    required this.decorations
  });

  final int stageIndex;

  final BackgroundLayer background;

  final BackgroundDecorationLayer backgroundDecorations;

  final ProblemLayer problems;

  final PlatformLayer platforms;

  final EnemyLayer enemies;

  final ObjectLayer objects;

  final DecorationLayer decorations;

  List<Component> get components => [
    ...background.layer..map((c) => c..priority = background.priority),
    ...backgroundDecorations.layer..map((c) => c..priority = backgroundDecorations.priority),
    ...problems.layer..map((c) => c..priority = problems.priority),
    ...platforms.layer..map((c) => c..priority = platforms.priority),
    ...enemies.layer..map((c) => c..priority = enemies.priority),
    ...objects.layer..map((c) => c..priority = objects.priority),
    ...decorations.layer..map((c) => c..priority = decorations.priority),
  ];
}

