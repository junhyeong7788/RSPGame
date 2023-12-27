import 'package:flutter/material.dart';
import 'package:rsp_game_application/game/widget/cpu_input.dart';
import 'package:rsp_game_application/game/widget/game_result.dart';
import 'package:rsp_game_application/game/widget/user_input.dart';

class GameBody extends StatefulWidget {
  const GameBody({super.key});

  @override
  State<GameBody> createState() => _GameBodyState();
}

class _GameBodyState extends State<GameBody> {
  late bool isDone;
  //late는 나중에 값을 할당한다는 의미
  //bool은 true, false를 가지는 자료형
  //result는 게임의 결과를 저장하는 변수

  @override
  void initState() {
    //initState는 위젯이 생성될 때 호출되는 함수
    super.initState(); //super는 부모 클래스를 의미 //initState는 부모 클래스의 initState를 호출한다.
    isDone = false; //결과값이 false일때 작동
  }

  @override
  Widget build(BuildContext context) {
    return const Column(
      //Column은 세로로 위젯을 배치하는 위젯
      children: [
        Expanded(child: CpuInput(isDone: isDone)),
        Expanded(child: GameResult(isDone: isDone)),
        Expanded(child: UserInput(isDone: isDone))
      ],
    );
  }
}
