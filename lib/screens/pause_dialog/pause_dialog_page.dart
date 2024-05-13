

import 'dart:developer';

import 'package:bit_math/game.dart';
import 'package:bit_math/screens/components/ui_button.dart';
import 'package:bit_math/screens/home_page/home_page.dart';
import 'package:bit_math/screens/pause_dialog/home_button.dart';
import 'package:bit_math/screens/pause_dialog/resume_button.dart';
import 'package:bit_math/screens/pause_dialog/retry_button.dart';
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

  
  @override
  Future<void> onLoad() async{
    //restartボタン欲しい
    final homeButton = HomeButton(
      sprite:getSprite(SpriteSheets.uiSprites, 669, 315, 48, 48) ,
      );
    
    final resumeButton = ResumeButton(
      sprite: getSprite(SpriteSheets.uiSprites, 101, 101, 48, 48)
    );

    final retryButton = RetryButton(
      sprite: getSprite(SpriteSheets.uiSprites, 487, 101, 48, 48)
    );
     
    
   addAll([ 
    homeButton..position = Vector2(game.canvasSize.x/2-100+ 24,game.canvasSize.y/3 + 24),
    retryButton..position = Vector2(game.canvasSize.x/2-50 + 24,game.canvasSize.y/3 + 24),
    resumeButton..position = Vector2(game.canvasSize.x/2 + 24,game.canvasSize.y/3 + 24),
    SoundToggle()..position = Vector2(game.canvasSize.x/2+50+24,game.canvasSize.y/3+24),
    ]);
    
    }

  @override
  void update(double dt) {
    // TODO: implement update
    super.update(dt);
  }
}