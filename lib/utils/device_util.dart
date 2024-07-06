
// import 'dart:developer';
// import 'dart:io';

// import 'package:device_info_plus/device_info_plus.dart';

// Future<String?> getDeviceId()async{
//   String? deviceId;
//   try {
//     DeviceInfoPlugin deviceInfo = DeviceInfoPlugin();
//     if (Platform.isAndroid) {
//       AndroidDeviceInfo androidInfo = await deviceInfo.androidInfo;
//       deviceId = androidInfo.id; // Androidの場合はidを使用
//     } else if (Platform.isIOS) {
//       IosDeviceInfo iosInfo = await deviceInfo.iosInfo;
//       deviceId = iosInfo.identifierForVendor; // iOSの場合はidentifierForVendorを使用
//     }
//   } catch (e) {
//     log('Failed to get device info: $e');
//   }
//   if(deviceId!=null){
//     log('deviceId:$deviceId');
//   }
//   return deviceId;
// }