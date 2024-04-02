import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    home: Scaffold(
      appBar: AppBar(
        title: Center(child: Text('위젯을 상하로 배치하기')),
        backgroundColor: Color(0xFF006090),
        foregroundColor: Colors.white,
      ),
      body: Body()
    )
  ));
}

class Body extends StatelessWidget {
  const Body({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.max,
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Container(width: 100, height: 20, color: Colors.red, child: Text('Container 1')),
        Container(width: 100, height: 20, color: Colors.green, child: Text('Containter 2')),
        Container(width: 100, height: 20, color: Colors.yellow, child: Text('Container 3'))
      ],
    );
  }
}
