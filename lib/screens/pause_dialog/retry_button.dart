
import 'dart:async';

import 'package:bit_math/game.dart';
import 'package:bit_math/global_key/scaffold_key.dart';
import 'package:bit_math/provider/ad_provider/showing_ad_provider.dart';
import 'package:bit_math/screens/pause_dialog/pause_dialog_page.dart';
import 'package:bit_math/screens/playing_page/playing_page.dart';
import 'package:flame/components.dart';
import 'package:flame/events.dart';
import 'package:flame/game.dart';
import 'package:flame_riverpod/flame_riverpod.dart';
import 'package:flutter/material.dart' hide Route;
import 'package:flutter_gen/gen_l10n/app_localizations.dart';

class RetryButton extends SpriteComponent with HasGameRef<BitmanMath>,TapCallbacks,RiverpodComponentMixin{

  RetryButton({super.sprite,});

  late TextComponent hint;
  @override
  FutureOr<void> onLoad() {
    hint = TextComponent(
        text: AppLocalizations.of(scaffoldKey.currentContext!)!.retryHint,
        textRenderer: TextPaint(
          style:const TextStyle(
            fontSize: 16,
            color: Colors.grey)
        ),
        position: Vector2(game.canvasSize.x/2,game.canvasSize.y*1/5),
        anchor: Anchor.center,
        );

    anchor = Anchor.center;
    scale = Vector2(-1, 1);
    return super.onLoad();
  }

  @override
  void onTapDown(TapDownEvent event) {
    findParent<PauseDialogPage>()!.add(hint);
    scale = Vector2(-0.85,0.85);
    super.onTapDown(event);
  }

  @override
  void onTapCancel(TapCancelEvent event) {
    hint.removeFromParent();
    scale = Vector2(-1,1);
    super.onTapCancel(event);
  }

  @override
  void onTapUp(TapUpEvent event) {
    hint.removeFromParent();
    scale = Vector2(-1,1);
    // retry logic
    game.router.pop();
    game.router.pushReplacement(Route(() => PlayingPage()));
    ref.read(showingAdNotifierProvider.notifier).disableAd();
    super.onTapUp(event);
  }
}