
//ゲームプレイ中にのみ必要なデータ（体力、持ち物、コインなど）

enum Equipment{
  sword,gun,helmet
}

enum BitmanStatus{
  normal,speedUp,speedDown,powerUp,powerDown
}

// this class represents data that only live in PlayingPage
class PlayingState{
  PlayingState({
    this.lives=6,
    this.status = BitmanStatus.normal,
    this.objectSpeed=0
  });

  int lives;
  BitmanStatus status;
  double objectSpeed;

  bool timeUp = false;
  bool fallDown = false;
  bool isGameover = false;
}