import 'dart:math';

import 'package:flutter/material.dart';
import 'package:rsp_game_application/game/enum.dart';
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
  InputType? _userInput; //nullable일 경우에는 앞에 late를 붙여주지 않는다.
  late InputType _cpuInput; //외부로 나갈일이 없어서 _를 붙인다.

  @override
  void initState() {
    //initState는 위젯이 생성될 때 호출되는 함수
    super.initState(); //super는 부모 클래스를 의미 //initState는 부모 클래스의 initState를 호출한다.
    isDone = false; //결과값이 false일때 작동
    setCpuInput();
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      //Column은 세로로 위젯을 배치하는 위젯
      children: [
        Expanded(child: CpuInput(isDone: isDone, cpuInput: _cpuInput)),
        Expanded(
            child: GameResult(
          isDone: isDone,
          result: getResult(),
          callback: reset,
        )),
        Expanded(
            child: UserInput(
                isDone: isDone, callback: setUserInput, userInput: _userInput))
      ],
    );
  }

  void setUserInput(InputType userInput) {
    setState(() {
      isDone = true;
      //유저가 값을 설정했다 = 바로 결과를 알 수 있다. = true
      _userInput = userInput;
    });
  }

  void setCpuInput() {
    final random = Random();
    _cpuInput = InputType.values[random.nextInt(3)];
  }

  void reset() {
    setState(() {
      isDone = false;
      setCpuInput();
    });
  }

  Result? getResult() {
    if (_userInput == null) return null;

    switch (_userInput!) {
      case InputType.rock:
        switch (_cpuInput) {
          case InputType.rock:
            return Result.draw;
          case InputType.scissors:
            return Result.playerWin;
          case InputType.paper:
            return Result.cpuWin;
        }
      case InputType.scissors:
        switch (_cpuInput) {
          case InputType.rock:
            return Result.cpuWin;
          case InputType.scissors:
            return Result.draw;
          case InputType.paper:
            return Result.playerWin;
        }
      case InputType.paper:
        switch (_cpuInput) {
          case InputType.rock:
            return Result.playerWin;
          case InputType.scissors:
            return Result.cpuWin;
          case InputType.paper:
            return Result.draw;
        }
    }
  }
}
