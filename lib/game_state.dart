

// not persisitent data
// but shared data in whole game
class GameState{
  GameState();

  int score=0;

  void reset(){
    score=0;
  }
  int get level {
    if (score < 1000) {
      return 1;
    } else if (score < 3000) {
      return 2;
    } else if (score < 10000) {
      return 3;
    } else if (score < 50000) {
      return 4;
    } else if (score < 100000) {
      return 5;
    } else {
      return 5;
    }
  }

// level1:8s
// level2:7s
// level3:6s
// level4:5s
// level5:4s
  int get time {
    if (level < 2) {
      return 8;
    } else if (level < 3) {
      return 7;
    } else if (level < 4) {
      return 6;
    } else if (level < 5) {
      return 5;
    } else{
      return 4;
    }
  }
}