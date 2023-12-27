import 'package:flutter/material.dart';
import 'package:rsp_game_application/game/game_body.dart';

void main() {
  runApp(const RSPApp());
}

class RSPApp extends StatelessWidget {
  const RSPApp(
      {super.key}); //super.key는 부모 클래스의 key를 사용하겠다는 의미 //부모클래스 : StatelessWidget

  @override
  Widget build(BuildContext context) {
    //build는 위젯트리를 구성하는 함수 //context는 위젯트리를 구성하는 노드의 정보를 가지고 있다.
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: const Text('RSP Game'),
        ),
        body:
            const GameBody(), //GameBody 클래스가 StatelessWidget이기 때문에 const가 붙는다.
      ),
    );
  }
}
