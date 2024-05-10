import 'dart:developer';

import 'package:bit_math/helper/save_data_helper.dart';
import 'package:flutter/material.dart' hide Route;

// this class is responsible for managing entire app state which should be shared between gamewidget and normalwidget

class AppStateManager extends ChangeNotifier {

  AppStateManager({required this.saveDataHelper});

  final SaveDataHelper saveDataHelper;

  // default: banner ad disabled
  bool showingAd = false;

  // 各ページが読み込まれる前に、(onloadやinitState)showingAdを適切に変更する

  setShowingAd(bool isShow){
    final isRemoveAd = saveDataHelper.iapData.isRemovedAd;
    if(isRemoveAd==true){
      showingAd=false;
      notifyListeners();
      return;
    }else{
      if(isShow) _enableAd();
      if(!isShow) _disableAd();
    }

  }

  _enableAd() {
    if(!showingAd){
    log('showingAd:$showingAd');
    showingAd = true;
    notifyListeners();
    }
  }

  _disableAd() {
    if(showingAd){
    log('showingAd:$showingAd');
    showingAd = false;
    notifyListeners();
    }
  }
}
