import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

void main() {
  runApp(MaterialApp(
      home: Scaffold(
    body: const Body(),
    appBar: AppBar(
      title: const Text('CallBack 공부하기'),
      centerTitle: true,
      backgroundColor: Colors.black,
      foregroundColor: Colors.amberAccent,
    ),
  )));
}

class Body extends StatelessWidget {
  const Body({super.key});

  @override
  Widget build(BuildContext context) {
    return TestWidget();
  }
}

class TestWidget extends StatefulWidget {
  const TestWidget({super.key});

  @override
  State<TestWidget> createState() => _TestWidgetState();
}

class _TestWidgetState extends State<TestWidget> {
  int value = 0;

  @override
  Widget build(BuildContext context) {
    return Column(mainAxisAlignment: MainAxisAlignment.center, children: [
      Text('Count: $value', style: const TextStyle(fontSize: 30)),
      TestButton(AddCounter)
    ]);
  }

  // 'Up Counter' (Container) 입력시 실행할 콜백함수
  void AddCounter(int addValue) => setState(() => value += addValue);
}

class TestButton extends StatelessWidget {
  const TestButton(this.callback, {super.key});

  final Function(int) callback;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () => callback.call(1),
      onDoubleTap: () => callback.call(5),
      onLongPress: () => callback.call(10),
      child: Container(
          margin: const EdgeInsets.symmetric(vertical: 8),
          width: double.infinity,
          child: Center(
              child: Container(
                  padding:
                      const EdgeInsets.symmetric(vertical: 4, horizontal: 8),
                  decoration: BoxDecoration(border: Border.all()),
                  child: const Text(
                    'Up Counter',
                    style: TextStyle(fontSize: 24),
                  )))),
    );
  }
}
