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
  @override
  Widget build(BuildContext context) {
    return const Column(
      //Column은 세로로 위젯을 배치하는 위젯
      children: [
        Expanded(child: CpuInput()),
        Expanded(child: GameResult()),
        Expanded(child: UserInput())
      ],
    );
  }
}
