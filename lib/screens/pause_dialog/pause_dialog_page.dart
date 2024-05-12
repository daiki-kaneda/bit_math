

import 'package:bit_math/game.dart';
import 'package:bit_math/screens/home_page/home_page.dart';
import 'package:bit_math/screens/pause_dialog/sound_toggle.dart';
import 'package:bit_math/screens/playing_page/playing_page.dart';
import 'package:bit_math/utils/sprite_util.dart';
import 'package:flame/components.dart';
import 'package:flame/game.dart';
import 'package:flame/input.dart';


/*
  PauseDialogPage is responsible for content of pause dialog

  pausedialog should include

  1. back to home button
  2. retry button
  3. sound toggle button
  4. resume button
*/

class PauseDialogPage extends Component with HasGameRef<BitmanMath>{

  late final ButtonComponent menuButton;
  late final ButtonComponent resumeButton;
  late final ButtonComponent retryButton;
  
  @override
  Future<void> onLoad() async{
    //restartボタン欲しい
    menuButton = ButtonComponent(
        button: SpriteComponent(
          sprite: getSprite(SpriteSheets.uiSprites, 669, 315, 48, 48)),
        onPressed: () {
          //menuButton.scale = Vector2.all(0.5);
        },
        onReleased: () {
          game.router.pushReplacement(Route(() => HomePage()));
        },
        onCancelled: () {
          //menuButton.scale = Vector2.all(1.0);
        },
        //anchor: Anchor.center,
        );

    resumeButton = ButtonComponent(
        button: SpriteComponent(
          sprite: getSprite(SpriteSheets.uiSprites, 101, 101, 48, 48)),
        onPressed: () {
          //menuButton.scale = Vector2.all(0.5);
        },
        onReleased: () {
          game.router.pop();
        },
        onCancelled: () {
          //menuButton.scale = Vector2.all(1.0);
        },
        //anchor: Anchor.center
        );
        
    retryButton = ButtonComponent(
        button: SpriteComponent(
          sprite: getSprite(SpriteSheets.uiSprites, 487, 101, 48, 48),
          anchor: Anchor.center,
          scale: Vector2(-1, 1)),
        onPressed: () {
         
        },
        onReleased: () {
          game.router.pop();
          game.router.pushReplacement(Route(() => PlayingPage()));
        },
        onCancelled: () {
          
        },
        //anchor: Anchor.center
        );
     
    
   addAll([
    menuButton..position = Vector2(game.canvasSize.x/2-100,game.canvasSize.y/3),
    resumeButton..position = Vector2(game.canvasSize.x/2-50,game.canvasSize.y/3),
    retryButton..position = Vector2(game.canvasSize.x/2 + 24,game.canvasSize.y/3 + 24),
    SoundToggle()..position = Vector2(game.canvasSize.x/2+50,game.canvasSize.y/3),
    ]);
    
    }

  @override
  void update(double dt) {
    // TODO: implement update
    super.update(dt);
  }
}