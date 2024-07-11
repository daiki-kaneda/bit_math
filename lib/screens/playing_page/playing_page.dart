import 'dart:async';
import 'dart:developer';
import 'dart:math' hide log;

import 'package:bit_math/game.dart';
import 'package:bit_math/models/screen_status.dart';
import 'package:bit_math/provider/ad_provider/showing_ad_provider.dart';
import 'package:bit_math/provider/app_review_provider/iar_provider.dart';
import 'package:bit_math/provider/save_data_provider/save_data_helper_provider.dart';
import 'package:bit_math/screens/components/stage_manager.dart';
import 'package:bit_math/screens/playing_page/HUD/aligator_number.dart';
import 'package:bit_math/screens/playing_page/HUD/back_button.dart';
import 'package:bit_math/screens/playing_page/HUD/joystick.dart';
import 'package:bit_math/screens/playing_page/HUD/jump_button.dart';
import 'package:bit_math/screens/playing_page/HUD/life.dart';
import 'package:bit_math/screens/playing_page/HUD/score.dart';
import 'package:bit_math/screens/playing_page/playing_state.dart';
import 'package:bit_math/screens/playing_page/stages/actor/bitman.dart';
import 'package:bit_math/screens/playing_page/HUD/hint_text.dart';
import 'package:bit_math/screens/playing_page/stages/enemy/common/simple_move_enemy.dart';
import 'package:bit_math/screens/playing_page/stages/item/heal_item.dart';
import 'package:bit_math/utils/constants.dart';
import 'package:flame/components.dart';
import 'package:flame/experimental.dart';
import 'package:flame/game.dart';
import 'package:flame_riverpod/flame_riverpod.dart';

class PlayingRoute extends Route
    with HasGameRef<BitmanMath>, RiverpodComponentMixin {
  PlayingRoute(this.page) : super(() => page, maintainState: false);

  PlayingPage page;

  @override
  FutureOr<void> onLoad() {
    print('PlayPage');
    return super.onLoad();
  }
}

class PlayingPage extends Component
    with HasGameRef<BitmanMath>, RiverpodComponentMixin {
  PlayingState state = PlayingState();

  late Bitman bitman;

  late CameraComponent camera;

  @override
  FutureOr<void> onLoad() async {
    // intialize score
    game.gameState.reset();

    final world = World();

    camera = CameraComponent.withFixedResolution(
        world: world, width: gameWidth, height: gameHeight);

    camera.viewfinder.anchor = Anchor.topLeft;
    await addAll([world, camera]);
    //stage
    await world.addAll(StageManager.getStage(ScreenStatus.playing));
    // hud,bitman
    final joystick = JoyStick();
    bitman = Bitman(joystick: joystick, screenStatus: ScreenStatus.playing)
      ..position = Vector2(18 * 16, 0 * 16);

    final jumpButton = JumpButton(bitman);
    //final timeRemaining = RemainingTime(300);
    //final attackButton = AttackButton(bitman);

    //final hint = HintText(x: 25, y: 2.5);
    final lifes = [
      Life(2, position: Vector2(16 * 4, 16), size: Vector2.all(16)),
      Life(4, position: Vector2(16 * 5, 16), size: Vector2.all(16)),
      Life(6, position: Vector2(16 * 6, 16), size: Vector2.all(16)),
    ];

    await camera.viewport.addAll([
      //TouchDetector(),
      joystick,
      jumpButton,
      //hint,
      //attackButton,
      //timeRemaining,
      BackButton(position: Vector2(2 * 16, 1 * 16), size: Vector2.all(20)),
      Score(),
      AligatorNumber(),
      ...lifes
    ]);
    world.add(bitman);

    // spawner
    final aligatorSpawner = SpawnComponent(
        factory: (n) {
          const limit = 9;
          if (n <= limit) {
            game.gameState.numbersOfAligator += 1;
            log('aligator number ${game.gameState.numbersOfAligator}');
            return SimpleMoveEnemy(0, 15,
                status: SimpleMoveEnemyStatus.aligator, interval: 49);
          } else {
            return PositionComponent();
          }
        },
        period: 20,
        area: Rectangle.fromLTWH(16 * 0, 16 * 15, 16, 16));

    final appleSpawner = SpawnComponent(
        factory: (n) {
          log('apple number $n');
          return HealItem(Random().nextInt(50).toDouble(), 15,
              status: HealItemStatus.apple);
        },
        period: 20,
        area: Rectangle.fromLTWH(16 * 0, 16 * 15, 16, 16));
    world.addAll([
      aligatorSpawner,
      appleSpawner,
    ]);
    log('game start');
    return super.onLoad();
  }

  @override
  void update(double dt) {
    //gameover logic (no life) or (fall)
    if (state.lives < 1
        //|| state.timeUp
        ||
        state.fallDown) {
      if (!state.isGameover) {
        //side effect

        final gs = game.gameState;
        ref.read(saveDataNotifierProvider.notifier)
        .updateScoreData(
          gs.score, 
          gs.maxStreak);
        if (Random().nextDouble() < 0.4) {
          ref.read(showingAdNotifierProvider.notifier).enableAd();
        } else {
          ref.read(showingAdNotifierProvider.notifier).disableAd();
        }

        game.router.pushReplacementNamed(ScreenStatus.result.name);
        state.isGameover = true;
        print('gameover');
      }
    }
    super.update(dt);
  }

  // @override
  // void onRemove() {
  //   //子供の参照が生きている問題
  //   removeAll(children);
  //   super.onRemove();
  // }
}
