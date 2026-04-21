
import 'dart:async';

import 'package:bit_math/game.dart';
import 'package:bit_math/global_key/scaffold_key.dart';
import 'package:bit_math/provider/ad_provider/showing_ad_provider.dart';
import 'package:bit_math/screens/pause_dialog/pause_dialog_page.dart';
import 'package:flame/components.dart';
import 'package:flame/events.dart';
import 'package:flame_riverpod/flame_riverpod.dart';
import 'package:flutter/material.dart';
import 'package:bit_math/l10n/app_localizations.dart';

class ResumeButton extends SpriteComponent with HasGameReference<BitmanMath>,TapCallbacks,RiverpodComponentMixin{

  ResumeButton({super.sprite,});

  late TextComponent hint;
  @override
  FutureOr<void> onLoad() {
    hint = TextComponent(
        text: AppLocalizations.of(scaffoldKey.currentContext!)!.resumeHint,
        textRenderer: TextPaint(
          style:const TextStyle(
            fontSize: 16,
            color: Colors.grey)
        ),
        position: Vector2(game.canvasSize.x/2,game.canvasSize.y*1/5),
        anchor: Anchor.center,
        );
    anchor = Anchor.center;
    return super.onLoad();
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
    ref.read(showingAdProvider.notifier).disableAd();
    game.router.pop();
    super.onTapUp(event);
  }
}