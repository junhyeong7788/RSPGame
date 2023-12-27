import 'package:flutter/material.dart';
import 'package:rsp_game_application/game/enum.dart';
import 'package:rsp_game_application/game/widget/input_card.dart';

class CpuInput extends StatelessWidget {
  final bool isDone;
  final InputType cpuInput;

  const CpuInput({required this.isDone, required this.cpuInput, super.key});

  @override
  Widget build(BuildContext context) {
    if (isDone) {
      return const Placeholder();
    }

    return const Center(
      child: InputCard(
          child: SizedBox(
              width: 60,
              height: 60,
              child: Center(
                  child: Text(
                '?',
                style: TextStyle(fontSize: 40, fontWeight: FontWeight.bold),
              )))),
    );
  }
}
