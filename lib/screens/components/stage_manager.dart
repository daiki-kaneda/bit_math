
import 'dart:math';

import 'package:bit_math/copy_component.dart';
import 'package:bit_math/screens/playing_page/stages/background/decoration/smoke_stack.dart';
import 'package:bit_math/screens/playing_page/stages/block/platform.dart';
import 'package:bit_math/screens/playing_page/stages/block/template_grounds.dart';
import 'package:bit_math/screens/playing_page/stages/decoration/decoration.dart';
import 'package:bit_math/screens/playing_page/stages/decoration/random_decoration.dart';
import 'package:bit_math/screens/playing_page/stages/objects/frame.dart';
import 'package:bit_math/screens/playing_page/stages/objects/problem/blackboard.dart';
import 'package:bit_math/screens/playing_page/stages/objects/problem/problem.dart';
import 'package:bit_math/screens/playing_page/stages/stages_manager/stages/layer/background_decoration_layer.dart';
import 'package:bit_math/screens/playing_page/stages/stages_manager/stages/layer/background_layer.dart';
import 'package:bit_math/screens/playing_page/stages/stages_manager/stages/layer/decoration_layer.dart';
import 'package:bit_math/screens/playing_page/stages/stages_manager/stages/layer/enemy_layer.dart';
import 'package:bit_math/screens/playing_page/stages/stages_manager/stages/layer/object_layer.dart';
import 'package:bit_math/screens/playing_page/stages/stages_manager/stages/layer/platform_layer.dart';
import 'package:bit_math/screens/playing_page/stages/stages_manager/stages/layer/problem_layer.dart';
import 'package:bit_math/screens/playing_page/stages/stages_manager/stages/stage_component.dart';
import 'package:flame/components.dart';
import 'package:bit_math/models/screen_status.dart';

class StageManager{

  static final random = Random();
  static List<Component> getStage(ScreenStatus screen){
    switch(screen){
      case ScreenStatus.splash:return splashStage.components.map((e) => e.copyComponent()).toList();
      case ScreenStatus.home:return homeStage.components.map((e) => e.copyComponent()).toList();
      case ScreenStatus.shop:return shopStage.components.map((e) => e.copyComponent()).toList();
      case ScreenStatus.achievement:return achievementStage.components.map((e) => e.copyComponent()).toList();
      case ScreenStatus.playingModeConfigure:return playConfigureStage.components.map((e) => e.copyComponent()).toList();
      case ScreenStatus.playing:return playingStage.components.map((e) => e.copyComponent()).toList();
      case ScreenStatus.result:return resultStage.components.map((e) => e.copyComponent()).toList();
      default: return []; // splash
    }
  }

    static final splashStage = StageComponents(
    0, 
    background: BackgroundLayer(), 
    backgroundDecorations: BackgroundDecorationLayer([
    ]), 
    problems: ProblemLayer([]), 
    platforms: PlatformLayer([
    ]), 
    enemies: EnemyLayer([
    ]), 
    objects: ObjectLayer([
    ]), 
    decorations: DecorationLayer([
    ]));
  
  static final homeStage = StageComponents(
    0, 
    background: BackgroundLayer(), 
    backgroundDecorations: BackgroundDecorationLayer([
      ...List.generate(5, (i) => i*10)
      .map((e) => e + random.nextInt(10))
      .map((e) => SmokeStack(x:e.toDouble(), y:0,))
    ]), 
    problems: ProblemLayer([]), 
    platforms: PlatformLayer([
      Platform(24, 16, length: 3, fallable: false)
    ]), 
    enemies: EnemyLayer([
    ]), 
    objects: ObjectLayer([
    ]), 
    decorations: DecorationLayer([
    ]));
  
  static final shopStage = StageComponents(
    0, 
    background: BackgroundLayer(), 
    backgroundDecorations: BackgroundDecorationLayer([]), 
    problems: ProblemLayer([]), 
    platforms: PlatformLayer([]), 
    enemies: EnemyLayer([]), 
    objects: ObjectLayer([]), 
    decorations: DecorationLayer([]));
  static final achievementStage = StageComponents(
    0, 
    background: BackgroundLayer(), 
    backgroundDecorations: BackgroundDecorationLayer([]), 
    problems: ProblemLayer([]), 
    platforms: PlatformLayer([]), 
    enemies: EnemyLayer([]), 
    objects: ObjectLayer([]), 
    decorations: DecorationLayer([]));
  
  static final playConfigureStage = StageComponents(
    0, 
    background: BackgroundLayer(), 
    backgroundDecorations: BackgroundDecorationLayer([]), 
    problems: ProblemLayer([]), 
    platforms: PlatformLayer([]), 
    enemies: EnemyLayer([]), 
    objects: ObjectLayer([]), 
    decorations: DecorationLayer([]));
  
  static final playingStage = StageComponents(
    0, 
    background: BackgroundLayer(), 
    backgroundDecorations: BackgroundDecorationLayer([
      ...List.generate(5, (i) => i*10)
      .map((e) => e + random.nextInt(10))
      .map((e) => SmokeStack(x:e.toDouble(), y:0,))
      // ...[4,13,29,44]
      // .map((e) => SmokeStack(x:e.toDouble(),y: 0))
    ]), 
      problems: ProblemLayer([
        Problem(
            id: 'tutorial-problem',
            maxLength: 1,
            generative: true,
            problem: [
              
            ]
            ),
      ]), 
    platforms: PlatformLayer([
      Grnd(
        status: GrndStatus.rectangle,
        gridPoints: [
          Vector2(0, 19),
          Vector2(0, 16),
          Vector2(49, 16),
          Vector2(49, 19)]
        ),
    ]), 
    enemies: EnemyLayer([
      // SimpleMoveEnemy(0, 15, status: SimpleMoveEnemyStatus.aligator, interval: 50),
      // SimpleMoveEnemy(5, 15, status: SimpleMoveEnemyStatus.aligator, interval: 45),
    ]), 
    objects: ObjectLayer([
      
    ]), 
    decorations: DecorationLayer([
      RandomDecoration(0, 15, w: 50, status: DecorationStatus.grass, prob: 0.25)
    ]));
  
  static final resultStage = StageComponents(
    0, 
    background: BackgroundLayer(), 
    backgroundDecorations: BackgroundDecorationLayer([
      ...List.generate(5, (i) => i*10)
      .map((e) => e + random.nextInt(10))
      .map((e) => SmokeStack(x:e.toDouble(), y:0,))
      // ...[9,10,23,29,39]
      // .map((e) => SmokeStack(x:e.toDouble(), y:0))
    ]), 
    problems: ProblemLayer([]), 
    platforms: PlatformLayer([
      Platform(23,11, length: 3, fallable: false)
    ]), 
    enemies: EnemyLayer([]), 
    objects: ObjectLayer([]), 
    decorations: DecorationLayer([]));
}

// add simple background status
// random chimney
// walking object
// spawner