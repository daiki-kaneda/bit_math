
import 'dart:developer';

import 'package:bit_math/helper/ad_helper.dart';
import 'package:bit_math/helper/app_state_manager.dart';
import 'package:flutter/material.dart';
import 'package:google_mobile_ads/google_mobile_ads.dart';
import 'package:provider/provider.dart';

class BannerAdWidget extends StatefulWidget {
  const BannerAdWidget({super.key});

  @override
  State<BannerAdWidget> createState() => _BannerAdWidgetState();
}

class _BannerAdWidgetState extends State<BannerAdWidget> {

  @override
  void initState() {
    context.read<AdHelper>().loadBannerAd();
    super.initState();
  }

  @override
  void didUpdateWidget(covariant BannerAdWidget oldWidget) {
    //log('${context.read<AppStateManager>().router.children}');
    super.didUpdateWidget(oldWidget);
  }
  @override
  Widget build(BuildContext context) {
    // this widget only rebuild when bannerAd changed or isPlaying changed
    final bannerAd = context.select<AdHelper,BannerAd?>(
      (value) => value.bannerAd
      );
    final showingAd = context.select<AppStateManager,bool>((value) => value.showingAd,);

    if(bannerAd!=null
    &&showingAd
    ){
      return SizedBox(
        width: bannerAd.size.width.toDouble(),
        height: bannerAd.size.height.toDouble(),
        child: AdWidget(ad: bannerAd),
      );
    }else{
      return const SizedBox(
        width: 320,
        height: 50,
      );
    }
  }
}