
import 'dart:async';
import 'dart:developer';

import 'package:bit_math/game.dart';
import 'package:bit_math/models/screen_status.dart';
import 'package:bit_math/screens/components/stage_manager.dart';
import 'package:bit_math/screens/playing_page/HUD/attack_button.dart';
import 'package:bit_math/screens/playing_page/HUD/back_button.dart';
import 'package:bit_math/screens/playing_page/HUD/joystick.dart';
import 'package:bit_math/screens/playing_page/HUD/jump_button.dart';
import 'package:bit_math/screens/playing_page/HUD/life.dart';
import 'package:bit_math/screens/playing_page/HUD/score.dart';
import 'package:bit_math/screens/playing_page/HUD/time.dart';
import 'package:bit_math/screens/playing_page/HUD/touch_detector.dart';
import 'package:bit_math/screens/playing_page/playing_state.dart';
import 'package:bit_math/screens/playing_page/stages/actor/bitman.dart';
import 'package:bit_math/screens/playing_page/HUD/hint_text.dart';
import 'package:bit_math/utils/constants.dart';
import 'package:flame/components.dart';
import 'package:flame/game.dart';

class PlayingRoute extends Route with HasGameRef<BitmanMath>{
  PlayingRoute(this.page):super(
    ()=>page,
    maintainState: false);

  PlayingPage page;

    @override
  FutureOr<void> onLoad() {
    print('PlayPage');
    return super.onLoad();
  }
}



class PlayingPage extends Component with HasGameRef<BitmanMath>{

  PlayingState state = PlayingState();

  late Bitman bitman;

  late CameraComponent camera;
  
  @override
  FutureOr<void> onLoad() async{
    // intialize score
    game.gameState.reset();

    final world = World();

    camera = CameraComponent.withFixedResolution(
      world: world,
      width: gameWidth, height: gameHeight);

    camera.viewfinder.anchor=Anchor.topLeft;
    await addAll([world,camera]);
    //stage
    await world.addAll(StageManager.getStage(ScreenStatus.playing));
    // hud,bitman
    final joystick = JoyStick();
    bitman = Bitman(
      joystick: joystick,
      screenStatus: ScreenStatus.playing)..position=Vector2(18*16, 0*16);

    final jumpButton = JumpButton(bitman);
    //final timeRemaining = RemainingTime(300);
    //final attackButton = AttackButton(bitman);

    final hint = HintText(x: 25, y: 2.5);
    final lifes = [
      Life(2,position: Vector2(16*4, 16),size: Vector2.all(16)),
      Life(4,position: Vector2(16*5, 16),size: Vector2.all(16)),
      Life(6,position: Vector2(16*6, 16),size: Vector2.all(16)),
    ];

    await camera.viewport.addAll([
      //TouchDetector(),
      joystick,
      jumpButton,
      hint,
      //attackButton,
      //timeRemaining,
      BackButton(position: Vector2(2*16, 1*16),size: Vector2.all(20)),
      Score(),
      ...lifes
    ]);
    world.add(bitman);
    log('game start');
    return super.onLoad();
  }

  @override
  void update(double dt) {
    //gameover logic (no life) or (fall)
    if(state.lives<1 
    //|| state.timeUp 
    || state.fallDown){
      if(!state.isGameover){
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
