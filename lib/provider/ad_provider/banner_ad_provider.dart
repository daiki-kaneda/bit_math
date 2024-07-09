import 'dart:developer';

import 'package:bit_math/models/ad_status.dart';
import 'package:bit_math/provider/ad_provider/removed_ad_provider.dart';
import 'package:bit_math/provider/ad_provider/showing_ad_provider.dart';
import 'package:bit_math/provider/ad_provider/unit_id_provider.dart';
import 'package:bit_math/provider/connectivity_provider/connectivity_provider.dart';
import 'package:google_mobile_ads/google_mobile_ads.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'banner_ad_provider.g.dart';

@riverpod
class BannerAdNotifier extends _$BannerAdNotifier {
  @override
  FutureOr<BannerAd?> build() async {
    // TODO:showingAdが変更された時nullであればloadするように数r
    final removedAd = await ref.watch(removedAdNotifierProvider.future);
    final showingAd = ref.watch(showingAdNotifierProvider);
    ref.listen(connectivityProvider, (previous, next) {
      if(previous!=null&&previous.value==false&&next.value==true){
        loadBannerAd();
      }
  });
    if(removedAd) return null;

    if(showingAd){
      return loadBannerAd();
    }else{
      return null;
    }
  }

  Future<BannerAd?> loadBannerAd() async {
    BannerAd? bannerAd;
    await BannerAd(
      adUnitId: ref.read(unitIdProvider(AdStatus.banner)),
      request: const AdRequest(),
      size: AdSize.banner,
      listener: BannerAdListener(
        onAdLoaded: (ad) {
          bannerAd = ad as BannerAd;
          state =  AsyncData(bannerAd);
        },
        onAdFailedToLoad: (ad, err) {
          log('Failed to load a banner ad: ${err.message}');
          ad.dispose();
        },
      ),
    ).load();

    return bannerAd;
  }
}
