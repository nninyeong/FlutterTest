import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'Style/theme.dart';

void main() {
  runApp(
    MaterialApp(
      home: const HomeWidget(),
      theme: customTheme,
    ),
  );
}

class HomeWidget extends StatefulWidget {
  const HomeWidget({super.key});

  @override
  State<HomeWidget> createState() => _HomeWidgetState();
}

class _HomeWidgetState extends State<HomeWidget> {
  int count = 0;

  late AssetImage currentImage;
  List<AssetImage> testing = [const AssetImage('assets/images/cat.png'),
  const AssetImage('assets/images/test.png')];

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    currentImage = testing[0];
  }

  @override
  Widget build(BuildContext context) {
    final textTheme = Theme.of(context).textTheme;

    return Scaffold(
      appBar: AppBar(
        title: const Text('Flutter Theme'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              'Press Count',
              style: customTheme.textTheme.bodyLarge,
            ),
            Text(
              '$count',
              style: textTheme.displayLarge,
            ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
          onPressed: () {
            setState(() {
              count++;
              currentImage = testing[count % 2];
            });
          },
          child: Image(
            image: currentImage,
          )),
    );
  }
}
