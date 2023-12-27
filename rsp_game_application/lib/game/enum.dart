const assetPath = 'assets/images/';

enum InputType {
  //enum : 열거형 //InputType이라는 이름의 열거형
  rock,
  scissors,
  paper;

  String get path => '$assetPath/$name.png';
  //get이란? : 변수처럼 사용할 수 있게 해줌
}
//이 값들은 InputType.rock, InputType.scissors, InputType.paper로 사용할 수 있다.

enum Result {
  playerWin('이겼습니다!'),
  cpuWin('졌습니다!'),
  draw('비겼습니다!');

  const Result(this.displayString); //this.displayString : Result의 displayString
  //displayString이란? : Result의 displayString이란 이름의 변수
  final String displayString;
}
