import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    home: Scaffold(
      body: Body()
    )
  ));
}

class Body extends StatelessWidget {
  const Body({super.key});

  @override
  Widget build(BuildContext context) {
    return const Column(
      children: [
        TestCheckBox()
      ],
    );
  }
}

class TestCheckBox extends StatefulWidget {
  const TestCheckBox({super.key});

  @override
  State<TestCheckBox> createState() => _TestCheckBoxState();
}

class _TestCheckBoxState extends State<TestCheckBox> {
  late List<bool> values;


  @override
  void initState() {
    super.initState();
    values = [false, false, false];
  }

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Checkbox(value: values[0], onChanged: foo),
        Checkbox(value: values[1], onChanged: (value) => ChangeValue(1, value: value)),
        Checkbox(value: values[2], onChanged: (value) => ChangeValue(2, value: value))],
    );
  }

  void foo(bool? value){
    ChangeValue(0, value: value);
  }

  void ChangeValue(int index, {bool? value = false}) {
    setState(() {
      values[index] = value!;
    });
  }
}

