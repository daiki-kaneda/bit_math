
import 'package:flutter/material.dart' hide Route;

// this class is responsible for managing entire app state which should be shared between gamewidget and normalwidget

class AppStateManager extends ChangeNotifier{

  bool showingAd = false;

  enableAd() {
    if (!showingAd) {
      showingAd = true;
      notifyListeners();
    }
  }

  disableAd(){
    if (showingAd) {
      showingAd = false;
      notifyListeners();
    }
  }

  

  
}