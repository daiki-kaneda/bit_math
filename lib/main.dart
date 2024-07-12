
import 'package:bit_math/app.dart';
import 'package:bit_math/provider/ad_provider/banner_ad_provider.dart';
import 'package:bit_math/provider/ad_provider/removed_ad_provider.dart';
import 'package:bit_math/provider/audio_provider/audio_provider.dart';
import 'package:bit_math/provider/connectivity_provider/connectivity_provider.dart';
import 'package:bit_math/provider/iap_provider/iap_helper_provider.dart';
import 'package:bit_math/provider/save_data_provider/save_data_helper_provider.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:google_mobile_ads/google_mobile_ads.dart';

Future<void> main() async{
  WidgetsFlutterBinding.ensureInitialized();
  SystemChrome.setPreferredOrientations([
    DeviceOrientation.landscapeLeft,DeviceOrientation.landscapeRight
  ]);
  await MobileAds.instance.initialize();


  runApp(
    const ProviderScope(child: _EagerInitialization(
      MyApp()
    ))
  );
}

class _EagerInitialization extends ConsumerWidget {
  const _EagerInitialization(this.child);

  final Widget child;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    ref.watch(saveDataNotifierProvider);
    ref.watch(iapHelperNotifierProvider);
    ref.watch(connectivityProvider);
    ref.watch(bannerAdNotifierProvider);
    ref.watch(audioPlayerProvider);
    ref.watch(removedAdNotifierProvider);
    return child;
  }
}

