import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'package:connectivity_plus/connectivity_plus.dart';

part 'connectivity_provider.g.dart';

@riverpod
Stream<bool> connectivity(Ref ref) {
  return Connectivity().onConnectivityChanged
  .map((results)=>results.contains(ConnectivityResult.mobile)||results.contains(ConnectivityResult.wifi));
}