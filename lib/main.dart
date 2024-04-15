import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

const assetImagePath = 'assets/images';
const samplePath = '$assetImagePath/cat.png';

void main() {
  runApp(MaterialApp(
      home: Scaffold(
        appBar: AppBar(
            title: Text('로컬데이터 활용하기'),
            backgroundColor: Colors.deepPurpleAccent,
            foregroundColor: Colors.white,
            centerTitle: true),
      body: Body())));
}

class Body extends StatelessWidget {
  const Body({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(child: Image.asset(samplePath));
  }
}

