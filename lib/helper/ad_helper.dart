// import 'dart:async';
// import 'dart:developer';
// import 'dart:io';

// import 'package:bit_math/models/ad_status.dart';
// import 'package:connectivity_plus/connectivity_plus.dart';
// import 'package:flutter/material.dart';
// import 'package:flutter/services.dart';
// import 'package:google_mobile_ads/google_mobile_ads.dart';

// class AdHelper extends ChangeNotifier{
//   AdHelper({required this.isDebug});

//   final bool isDebug;

//   BannerAd? bannerAd;

//   // connectivity_plusを使って、オフラインからオンラインになったときにバナー広告を再読み込みする
//   List<ConnectivityResult> _connectionStatus = [ConnectivityResult.none];
//   final Connectivity _connectivity = Connectivity();
//   late StreamSubscription<List<ConnectivityResult>> _connectivitySubscription;

//   Future<void> init()async{
//     await MobileAds.instance.initialize();

//     initConnectivity();
//     _connectivitySubscription =
//     _connectivity.onConnectivityChanged.listen(_updateConnectionStatus);
//   }
  
//   Future<void> initConnectivity() async {
//     late List<ConnectivityResult> result;
//     // Platform messages may fail, so we use a try/catch PlatformException.
//     try {
//       result = await _connectivity.checkConnectivity();
//     } on PlatformException catch (e) {
//       log('Couldn\'t check connectivity status', error: e);
//       return;
//     }

//     return _updateConnectionStatus(result);
//   }

//   bool isOnline(List<ConnectivityResult> list){
//     return list.contains(ConnectivityResult.mobile)
//       ||list.contains(ConnectivityResult.wifi);
//   }

//   Future<void> _updateConnectionStatus(List<ConnectivityResult> result) async {
//     // if offline->online => banner ad reload
//     if(!isOnline(_connectionStatus)&&isOnline(result)){
//       loadBannerAd();
//     }
//     _connectionStatus = result;
//     notifyListeners();
//     log('Connectivity changed: $_connectionStatus');
//   }

//   Future<void> loadBannerAd() async {
//     BannerAd(
//       adUnitId: getUnitId(AdStatus.banner),
//       request: const AdRequest(),
//       size: AdSize.banner,
//       listener: BannerAdListener(
//         onAdLoaded: (ad) {
//           bannerAd = ad as BannerAd;
//           notifyListeners();
//         },
//         onAdFailedToLoad: (ad, err) {
//           log('Failed to load a banner ad: ${err.message}');
//           ad.dispose();
//         },
//       ),
//     ).load();
//   }

//   String getUnitId(AdStatus status) {
//     switch (status) {
//       case AdStatus.banner:
//         {
//           if (Platform.isAndroid) {
//             if(isDebug){
//               return 'ca-app-pub-3940256099942544/6300978111';
//             }else{
//               return 'ca-app-pub-9913164821436989/1636459142';
//             }
//           } else if (Platform.isIOS) {
//             if(isDebug){
//               return 'ca-app-pub-3940256099942544/2934735716';
//             }else{
//               return 'ca-app-pub-9913164821436989/5575704159';
//             }
//           } else {
//             throw UnsupportedError('Unsupported Platform');
//           }
//         }
//     }
//   }


// }