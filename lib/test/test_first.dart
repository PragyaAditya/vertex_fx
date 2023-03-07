import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:vertax_fx/colorconstraint/color_constraint.dart';

class TestFristScren extends StatefulWidget {
  const TestFristScren({super.key});

  @override
  State<TestFristScren> createState() => _TestFristScrenState();
}

class _TestFristScrenState extends State<TestFristScren> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Column(
      children: [
        Center(
          child: Container(
            height: 10,
            width: 10,
            color: ColorConstraints.blue,
          ),
        ),
        TextButton(
            onPressed: () {
              Navigator.pushNamed(context, '/screenFrist');
            },
            child: Text("hello ")),
      ],
    ));
  }
}
