enum SaveDataStatus{
  scoreData,
  setting,
  iapData;

  String get key{
    switch(this){
      case scoreData:return "score-data-key";
      case setting:return "setting-key";
      case iapData:return "iap-data-key";
    }
  }
}