import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';
import 'package:flutter/widgets.dart';

void main() {
  runApp(MaterialApp(
      home: Scaffold(
          appBar: AppBar(
            title: Center(child: Text('위젯을 쌓아올리기')),
            backgroundColor: Color(0xFF006090),
            foregroundColor: Colors.white,
          ),
          body: Body())));
}

class Body extends StatelessWidget {
  const Body({super.key});

  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: Alignment.center,
      child: Container(
        decoration: BoxDecoration(color: Colors.black),
        child: Stack(
          children: [
            Align(
              alignment: Alignment.center,
              child: Container(
                  width: 300,
                  height: 300,
                  decoration: BoxDecoration(
                      color: Colors.red, borderRadius: BorderRadius.circular(150))),
            ),
            Align(
              alignment: Alignment.center,
              child: Container(
                  width: 280,
                  height: 280,
                  decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(140))),
            ),
            Align(
              alignment: Alignment.center,
                child: const Text('Count',
                    style: TextStyle(color: Colors.red, fontSize: 32))),
          ],
        ),
      ),
    );
  }
}
