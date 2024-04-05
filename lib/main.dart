import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';
import 'package:flutter/widgets.dart';

void main() {
  runApp(MaterialApp(home: Scaffold(body: HomeWidget())));
}

class HomeWidget extends StatelessWidget {
  const HomeWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(children: [ExampleStateless(), ExampleStateful(index: 3)]);  // ExampleStateful의 index를 초기값 3으로 호출
  }
}

class ExampleStateless extends StatelessWidget {
  const ExampleStateless({super.key});

  @override
  Widget build(BuildContext context) {
    return Expanded(
      flex: 1,
      child: Container(color: Colors.red),
    );
  }
}

class ExampleStateful extends StatefulWidget {
  final int index;
  const ExampleStateful({required this.index, super.key});

  @override
  State<ExampleStateful> createState() => _ExampleStatefulState();
}

class _ExampleStatefulState extends State<ExampleStateful> {
  late int _index;  // index가 null이어도 되는 상황이라면 int? index;로 해도 가능함
  late TextEditingController textController;

  @override
  void initState() {
    super.initState();
    _index = widget.index;
    textController = TextEditingController();
  }


  @override
  void dispose() {
    textController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Expanded(
      flex: 1,
      child: GestureDetector(
        onTap: () {
          setState(() {
            if (_index == 5) {
              _index = 0;
              return;
            }

            _index++;
          });
        },
        child:
            Container(color: Colors.blue.withOpacity(_index/5), child: Center(child: Text('$_index'))),
      ),
    );
  }
}
