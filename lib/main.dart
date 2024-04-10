import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(home: Scaffold(body: Body())));
}

class Body extends StatelessWidget {
  const Body({super.key});

  @override
  Widget build(BuildContext context) {
    return const Column(
      children: [TestCheckBox(), TestRadioButton()],
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
        Checkbox(
            value: values[1],
            onChanged: (value) => ChangeValue(1, value: value)),
        Checkbox(
            value: values[2],
            onChanged: (value) => ChangeValue(2, value: value))
      ],
    );
  }

  void foo(bool? value) {
    ChangeValue(0, value: value);
  }

  void ChangeValue(int index, {bool? value = false}) {
    setState(() {
      values[index] = value!;
    });
  }
}

enum TestRadioValue {
  Test1,
  Test2,
  Test3;
}

class TestRadioButton extends StatefulWidget {
  const TestRadioButton({super.key});

  @override
  State<TestRadioButton> createState() => _TestRadioButtonState();
}

class _TestRadioButtonState extends State<TestRadioButton> {
  TestRadioValue? selectValue;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        ListTile(
          leading: Radio<TestRadioValue>(
              value: TestRadioValue.Test1,
              groupValue: selectValue,
              onChanged: (value) => setState(() {
                    selectValue = value;
                  })),
          title: Text(TestRadioValue.Test1.name),
          onTap: () => setState(() {
            if(selectValue != TestRadioValue.Test1)
              {
                   selectValue = TestRadioValue.Test1;
              }
          }),  // ListTile 영역을 터치했을 때도 Radio 버튼이 변경되도록 처리
        ),
        Radio<TestRadioValue>(
            value: TestRadioValue.Test2,
            groupValue: selectValue,
            onChanged: (value) => ChangeRadioValue(value!)),
        Radio<TestRadioValue>(
            value: TestRadioValue.Test3,
            groupValue: selectValue,
            onChanged: (value) => setState(() => selectValue = value!))
      ],
    );
  }

  void ChangeRadioValue(TestRadioValue value)
  {
    setState(() => selectValue = value);
  }
}