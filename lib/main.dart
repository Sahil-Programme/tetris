import 'package:flutter/material.dart';

import 'pages/game_page.dart';

void main() {
  runApp(const Tetris());
}

class Tetris extends StatelessWidget {
  const Tetris({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Tetris',
      home: GamePage(title: 'Gamepage'),
    );
  }
}
