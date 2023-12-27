import 'dart:ffi';

import 'package:flutter/material.dart';
import 'package:rsp_game_application/game/enum.dart';

class GameResult extends StatelessWidget {
  final bool isDone; //final : 변수를 상수화 시킨다.
  final Result? result;
  final VoidCallback callback;

  const GameResult(
      {required this.isDone, required this.callback, this.result, super.key});

  @override
  Widget build(BuildContext context) {
    if (isDone) {
      return Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            result!.displayString,
            style: const TextStyle(fontSize: 32),
          ),
          const SizedBox(height: 8),
          TextButton(
            child: const Text(
              '다시하기',
              style: TextStyle(fontSize: 24),
            ),
            onPressed: () => callback.call(),
          )
        ],
      );
    }
    return const Center(
      child: Text(
        '가위, 바위, 보 중 하나를 선택해주세요.',
        style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold),
      ),
    );
  }
}
