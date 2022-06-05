import 'package:flutter/material.dart';

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
      home: HomePage(title: 'Homepage'),
    );
  }
}

// --> Size of the board is 10x24

class HomePage extends StatelessWidget {
  const HomePage({Key? key, required this.title}) : super(key: key);
  final String title;
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
      body: const Matrix(),
    );
  }
}

class Matrix extends StatelessWidget {
  const Matrix({Key? key}) : super(key: key);

  Widget cell() {
    return Container(
      width: 30,
      height: 30,
      decoration: BoxDecoration(
        border: Border.all(color: Colors.red),
      ),
    );
  }

  Row rowBuilder() {
    final List<Widget> rowList = [];
    for (int i = 0; i < 10; i++) {
      rowList.add(cell());
    }
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: rowList,
    );
  }

  Column colBuilder() {
    final List<Widget> colList = [];
    for (int i = 0; i < 20; i++) {
      colList.add(rowBuilder());
    }
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: colList,
    );
  }

  @override
  Widget build(BuildContext context) {
    return Center(child: colBuilder());
  }
}
