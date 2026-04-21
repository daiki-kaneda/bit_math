import 'dart:async';

import 'package:bit_math/game.dart';
import 'package:bit_math/global_key/scaffold_key.dart';
import 'package:bit_math/provider/save_data_provider/save_data_helper_provider.dart';
import 'package:bit_math/screens/pause_dialog/pause_dialog_page.dart';
import 'package:bit_math/utils/sprite_util.dart';
import 'package:flame/components.dart';
import 'package:flame/events.dart';
import 'package:flame_riverpod/flame_riverpod.dart';
import 'package:flutter/material.dart';
import 'package:bit_math/l10n/app_localizations.dart';

class SoundToggle extends SpriteGroupComponent<bool> with HasGameRef<BitmanMath>,TapCallbacks,RiverpodComponentMixin{

  late TextComponent hint;

  bool isSound = false;

  @override
  FutureOr<void> onLoad() async{
    hint = hint = TextComponent(
        text:  AppLocalizations.of(scaffoldKey.currentContext!)!.muteHint,
        textRenderer: TextPaint(
          style:const TextStyle(
            fontSize: 16,
            color: Colors.grey)
        ),
        position: Vector2(game.canvasSize.x/2,game.canvasSize.y*1/5),
        anchor: Anchor.center,
        );
    current = isSound;
    sprites = {
      true: getSprite(SpriteSheets.uiSprites, 767, 51, 48, 48),
      false:getSprite(SpriteSheets.uiSprites, 51, 101, 48, 48)
    };
    anchor = Anchor.center;
    return super.onLoad();
  }

  @override
  void onMount() {
    addToGameWidgetBuild(()async{
      isSound = await ref.watch(saveDataProvider.selectAsync((data) => data.setting.isSound,));
    });
    super.onMount();
  }

  @override
  void onTapDown(TapDownEvent event) {
    findParent<PauseDialogPage>()!.add(hint);
    scale = Vector2.all(0.85);
    super.onTapDown(event);
  }

  @override
  void onTapCancel(TapCancelEvent event) {
    hint.removeFromParent();
    scale = Vector2.all(1);
    super.onTapCancel(event);
  }

  @override
  void onTapUp(TapUpEvent event) {
    hint.removeFromParent();

    scale = Vector2.all(1);
    if(current!){
       current = false;
       ref.read(saveDataProvider.notifier).isSoundToggle();
    }else{
      current = true;
      ref.read(saveDataProvider.notifier).isSoundToggle();
    }
    super.onTapUp(event);
  }
}