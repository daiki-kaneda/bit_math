import 'dart:developer';

import 'package:bit_math/models/ad_status.dart';
import 'package:bit_math/provider/ad_provider/banner_ad_provider.dart';
import 'package:bit_math/provider/ad_provider/removed_ad_provider.dart';
import 'package:bit_math/provider/ad_provider/showing_ad_provider.dart';
import 'package:bit_math/provider/ad_provider/unit_id_provider.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:google_mobile_ads/google_mobile_ads.dart';

import 'package:google_mobile_ads/google_mobile_ads.dart';

class BannerAdWidget extends ConsumerStatefulWidget {
  const BannerAdWidget({super.key});

  @override
  ConsumerState<ConsumerStatefulWidget> createState() => _BannerAdWidgetState();
}

class _BannerAdWidgetState extends ConsumerState<BannerAdWidget> {

  BannerAd? _bannerAd;
  bool _bannerReady = false;

  @override
  void initState() {
    // final removeAd = ref.read(removedAdProvider);
    // if(removeAd.value == false){
    _bannerAd = BannerAd(
        adUnitId: ref.read(unitIdProvider(AdStatus.banner)),
        request: const AdRequest(),
        size: AdSize.banner,
        listener: BannerAdListener(
          onAdLoaded: (_) {
            setState(() {
              _bannerReady = true;
            });
          },
          onAdFailedToLoad: (ad, err) {
            setState(() {
              _bannerReady = false;
            });
            ad.dispose();
          },
        ),
      );
      _bannerAd?.load();
    //}
    super.initState();
  }

  @override
  void dispose() {
    super.dispose();
    _bannerAd?.dispose();
  }

  @override
  Widget build(BuildContext context) {
    // final removeAd = ref.watch(removedAdProvider).value ?? true;
    final showingAd = ref.watch(showingAdNotifierProvider);
  
    return Stack(
      children: [
        const SizedBox(
          width: 320,
          height: 50,
        ),
        if(_bannerReady&&showingAd
        //&&!removeAd
        )
        SizedBox(
          width: _bannerAd!.size.width.toDouble(),
          height: _bannerAd!.size.height.toDouble(),
          child: AdWidget(ad: _bannerAd!),
        ),
      ],
    );
  }
}
// class BannerAdWidget extends ConsumerWidget {
//   const BannerAdWidget({super.key});

//   @override
//   Widget build(BuildContext context, WidgetRef ref) {
//     final bannerAd = ref.watch(bannerAdNotifierProvider);
//     final showingAd = ref.watch(showingAdNotifierProvider);
//     log('bannerAd.value:${bannerAd.value},showingAd:$showingAd');
//       if(bannerAd.value!=null && showingAd){
//       return SizedBox(
//         width: bannerAd.value!.size.width.toDouble(),
//         height: bannerAd.value!.size.height.toDouble(),
//         child: AdWidget(ad: bannerAd.value!),
//       );
//     }else{
//       return const SizedBox(
//         width: 320,
//         height: 50,
//       );
//     }
//   }
// }