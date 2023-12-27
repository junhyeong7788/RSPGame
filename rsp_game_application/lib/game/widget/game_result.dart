import 'package:flutter/material.dart';

class GameResult extends StatelessWidget {
  final bool isDone; //final : 변수를 상수화 시킨다.

  const GameResult({required this.isDone, super.key});

  @override
  Widget build(BuildContext context) {
    if (isDone) {
      return const Placeholder();
    }
    return const Center(
        child: Text(
      '가위, 바위, 보 중 하나를 선택해주세요.',
      style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold),
    ));
  }
}
