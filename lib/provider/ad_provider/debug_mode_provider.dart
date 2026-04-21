import 'package:flutter/foundation.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'debug_mode_provider.g.dart';

@riverpod
bool isDebug(Ref ref) {
  return kDebugMode;
   // when inner test 
   //return true;
}