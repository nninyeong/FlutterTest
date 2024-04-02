import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
      home: Scaffold(
          appBar: AppBar(
            title: Center(child: Text('위젯을 좌우로 배치하기')),
            backgroundColor: Color(0xFF006090),
            foregroundColor: Colors.white,
          ),
          body: Body())));
}

class Body extends StatelessWidget {
  const Body({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: Row(
          children: [
            Container(
                width: 100,
                height: 50,
                color: Colors.red,
                margin: EdgeInsets.symmetric(horizontal: 8),
                child: Text('Container 1')),
            Container(
                width: 100,
                height: 50,
                color: Colors.green,
                margin: EdgeInsets.symmetric(horizontal: 8),
                child: Text('Containter 2')),
            Container(
                width: 100,
                height: 50,
                color: Colors.yellow,
                margin: EdgeInsets.symmetric(horizontal: 8),
                child: Text('Container 3')),
            Container(
            width: 100,
                height: 50,
              color: Colors.blue,
              margin: EdgeInsets.symmetric(horizontal: 8),
              child: Text('Container 4')
            )
          ]),
    );
  }
}
