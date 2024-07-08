import 'dart:io';

import 'package:bit_math/models/ad_status.dart';
import 'package:bit_math/provider/ad_provider/debug_mode_provider.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'unit_id_provider.g.dart';

@riverpod
String unitId(UnitIdRef ref,AdStatus status) {
  final isDebug =ref.read(isDebugProvider);
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