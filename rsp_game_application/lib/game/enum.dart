const assetPath = 'assets/images/';

enum InputType {
  //enum : 열거형 //InputType이라는 이름의 열거형
  rock,
  scissors,
  paper;

  String get path => '$assetPath/$name.png';
  //get이란? : 변수처럼 사용할 수 있게 해줌
}
