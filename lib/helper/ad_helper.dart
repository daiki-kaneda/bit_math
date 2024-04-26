

import 'dart:developer';
import 'dart:io';

import 'package:bit_math/models/ad_status.dart';
import 'package:flutter/material.dart';
import 'package:google_mobile_ads/google_mobile_ads.dart';

class AdHelper extends ChangeNotifier{
  AdHelper({required this.isDebug});

  final bool isDebug;


  BannerAd? bannerAd;

  Future<void> init()async{
    await MobileAds.instance.initialize();
  }

  Future<void> loadBannerAd() async {
    BannerAd(
      adUnitId: getUnitId(AdStatus.banner),
      request: const AdRequest(),
      size: AdSize.banner,
      listener: BannerAdListener(
        onAdLoaded: (ad) {
          bannerAd = ad as BannerAd;
          notifyListeners();
        },
        onAdFailedToLoad: (ad, err) {
          log('Failed to load a banner ad: ${err.message}');
          ad.dispose();
        },
      ),
    ).load();
  }

  String getUnitId(AdStatus status) {
    switch (status) {
      case AdStatus.banner:
        {
          if (Platform.isAndroid) {
            if(isDebug){
              return 'ca-app-pub-3940256099942544/6300978111';
            }else{
              return 'ca-app-pub-9913164821436989/1636459142';
            }
          } else if (Platform.isIOS) {
            if(isDebug){
              return 'ca-app-pub-3940256099942544/2934735716';
            }else{
              return 'ca-app-pub-9913164821436989/5575704159';
            }
          } else {
            throw UnsupportedError('Unsupported Platform');
          }
        }
    }
  }


}