// import 'package:riverpod_annotation/riverpod_annotation.dart';
// import 'package:bit_math/provider/save_data_provider/save_data_helper.dart';
// import 'package:shared_preferences/shared_preferences.dart';

// part 'save_data_helper_provider.g.dart';

// @riverpod
// FutureOr<SaveDataHelper> saveDataHelper(SaveDataHelperRef ref) async{
//   final preferences = await SharedPreferences.getInstance();
//   final helper = SaveDataHelper(preferences);
//   await helper.loadData();
//   return helper;
// }