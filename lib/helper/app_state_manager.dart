import 'dart:developer';

import 'package:flutter/material.dart' hide Route;

// this class is responsible for managing entire app state which should be shared between gamewidget and normalwidget

class AppStateManager extends ChangeNotifier {
  bool showingAd = false;

  enableAd() {
    // 依存性を減らすためにcontext.readで実行できるようにする（現在の状態に全くよらない処理)
    log('showingAd:$showingAd');
    showingAd = true;
    notifyListeners();
  }

  disableAd() {
    // 依存性を減らすためにcontext.readで実行できるようにする（現在の状態に全くよらない処理)
    log('showingAd:$showingAd');
    showingAd = false;
    notifyListeners();
  }
}
