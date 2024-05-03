
import 'dart:async';

import 'package:bit_math/game_state.dart';
import 'package:bit_math/helper/app_state_manager.dart';
import 'package:bit_math/helper/data_repository.dart';
import 'package:bit_math/helper/save_data_helper.dart';
import 'package:bit_math/models/screen_status.dart';
import 'package:bit_math/screens/home_page/home_page.dart';
import 'package:bit_math/screens/playing_page/playing_page.dart';
import 'package:bit_math/screens/result_page/result_page.dart';
import 'package:bit_math/screens/splash_page/splash_page.dart';
import 'package:flame/components.dart';
import 'package:flame/events.dart';
import 'package:flame/flame.dart';
import 'package:flame/game.dart';
import 'package:flame_audio/flame_audio.dart';
// import 'package:flutter/material.dart' hide Route;

class BitmanMath extends FlameGame with HasCollisionDetection{
  BitmanMath({
    required this.saveData,required this.backendData,required this.appStateManager});
  // saveData
  final SaveDataHelper saveData;

  final BackendDataRepository backendData;

  final AppStateManager appStateManager;

  // router
  late RouterComponent router;
  
  // not persistent but shared data in game
  GameState gameState = GameState();

  
  @override
  FutureOr<void> onLoad() async{
    //load assets
    //load sprites
    await images.loadAll(
      [
        'colored_packed.png',
        'colored-tiles.png',
        'colored-transparent_packed.png',
        'colored-transparent.png',
        'monochrome-transparent.png',
        'monochrome.png',
        'ui_sprites.png',
        'roguelikeDungeon_transparent.png',
        'platforms.png',
        'backgrounds.png',
        'normal_background.png',
        'helppage.png',
        'chimney.png'
      ]
    );
    // load audio
    await FlameAudio.audioCache.loadAll([
      'jingles_NES00.mp3',
      'jingles_NES13.mp3',
      'jingles_NES14.mp3',
      'jingles_NES15.mp3',
      'jingles_NES16.mp3'
    ]);
    // router
    router = RouterComponent(
        routes: {
          ScreenStatus.splash.name:
              Route(() => SplashPage()),
          ScreenStatus.home.name: Route(() => HomePage()),
          ScreenStatus.achievement.name:
              Route(() => TextComponent(text: "achievement dialog"),
              transparent: true),
          // ScreenStatus.setting.name:
          //     Route(() => TextComponent(text: "setting page")),
          // ScreenStatus.license.name:
          //     Route(() => TextComponent(text: "license page")),
          ScreenStatus.shop.name: Route(() => TextComponent(text: "shop dialog"),
          transparent: true),
          ScreenStatus.playingModeConfigure.name:
              Route(() => TextComponent(text: "playing mode configure page")),
          // playing pageのデータがキャッシュされるのを防ぐために、pushRoute(PlayingRoute())によって、毎回フレッシュなページをよびだしたい
          // ScreenStatus.playing.name:
          //     Route(() => PlayingPage(),
          //     maintainState: false),
          // ScreenStatus.pause.name: Route(
          //     () => TextComponent(text: "pause dialog"),
          //     transparent: true),
          ScreenStatus.result.name:
              Route(() => ResultPage(),
              maintainState: false),
          // ScreenStatus.scoreBoard.name: Route(
          //     () => TextComponent(text: "score board dialog"),
          //     transparent: true),
          // ScreenStatus.skinSelect.name: Route(
          //     () => TextComponent(text: "skin select dialog"),
          //     transparent: true),
        },
        initialRoute: ScreenStatus.splash.name,
      );
    add(router);
    return super.onLoad();
  }

  @override
  void onRemove() {
    // TODO: implement onRemove
    super.onRemove();
  }
}
