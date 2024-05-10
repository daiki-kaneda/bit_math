
import 'dart:convert';
import 'dart:developer';

import 'package:bit_math/models/iap_data.dart';
import 'package:bit_math/models/save_data_status.dart';
import 'package:bit_math/models/score_data.dart';
import 'package:bit_math/models/setting.dart';
import 'package:bit_math/screens/playing_page/stages/actor/bitman.dart';
import 'package:shared_preferences/shared_preferences.dart';

class SaveDataHelper{

  SaveDataHelper(this.preference);

  final SharedPreferences preference;

  // initial setting
  Setting _setting = const Setting(
    isSound: true, 
    isBGM: false, 
    isHapticFeedback: true, 
    isFixedJoystick: true, 
    isLeftJoystick: true,
    bitmanName: "bitman",
    selectedWeapon: BitmanWeapon.none,
    selectedHelmet: BitmanHelmet.none,
    color: BitmanColor.normalBlue,
    );
  Setting get setting => _setting;
  set setting(Setting newSetting){
    _setting = newSetting;
    _saveData(SaveDataStatus.setting, newSetting);
  }

  // intial scoredata
  ScoreData _scoreData = const ScoreData(
    bestScore: 0, 
    numbersToSolveAddition: 0, 
    numbersToSolveSubstraction: 0, 
    numbersToSolveMultipulation: 0, 
    numbersToSolveDivision: 0);
  ScoreData get scoreData => _scoreData;
  set scoreData(ScoreData newScoreData){
    _scoreData = newScoreData;
    _saveData(SaveDataStatus.scoreData,newScoreData);
  }

    // intial scoredata
  IAPData _iapData = const IAPData(
    isRemovedAd: false
  );
  IAPData get iapData => _iapData;
  set iapData(IAPData newIapData){
    _iapData= newIapData;
    _saveData(SaveDataStatus.iapData,newIapData);
  }

  Future<void> loadData()async{
    final savedSetting = getData(SaveDataStatus.setting) as Setting?;
    final savedScore = getData(SaveDataStatus.scoreData) as ScoreData?;
    final savedIap = getData(SaveDataStatus.iapData) as IAPData?;
    setting = savedSetting ?? setting;
    scoreData = savedScore ?? scoreData;
    iapData = savedIap ?? iapData;
  }

  Future<void> _saveData(SaveDataStatus status,Object data)async{
    if (data is ScoreData || data is Setting || data is IAPData) {
      final jsonString = jsonEncode(data);
      await preference.setString(status.key, jsonString);
      log('saved ${status.name}');
    }else{
      log('data is not jsonserializable');
    }
  }

  Object? getData(SaveDataStatus status){
    final savedJsonString = preference.getString(status.key);
    if(savedJsonString==null){ 
      log('no save data on ${status.key}');
      return null;
    }
    final jsonMap = jsonDecode(savedJsonString) as Map<String,dynamic>;
    switch(status){
      case SaveDataStatus.scoreData:{
        return ScoreData.fromJson(jsonMap);
      }
      case SaveDataStatus.setting:{
        return Setting.fromJson(jsonMap);
      }
      case SaveDataStatus.iapData:{
        return IAPData.fromJson(jsonMap);
      }
    }
  }
}