import 'package:flutter/material.dart';

class GamePage extends StatelessWidget {
  static const routeName = '/gamePage';
  final String title;
  const GamePage({required this.title, Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Tetris', style: TextStyle(color: Colors.blue)),
        centerTitle: true,
        backgroundColor: Colors.transparent,
        elevation: 1,
        shadowColor: Colors.transparent,
      ),
      body: Center(
          child: Container(
        color: Colors.orange,
        width: 200,
        height: 200,
      )),
    );
  }
}
