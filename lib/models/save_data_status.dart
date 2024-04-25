enum SaveDataStatus{
  scoreData,
  setting;

  String get key{
    switch(this){
      case scoreData:return "score-data-key";
      case setting:return "setting-key";
    }
  }
}