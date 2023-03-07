import 'package:flutter/material.dart';
import 'package:vertax_fx/colorconstraint/color_constraint.dart';

class BlueLine extends StatefulWidget {
  const BlueLine({super.key});

  @override
  State<BlueLine> createState() => _BlueLineState();
}

class _BlueLineState extends State<BlueLine> {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 6,
      width: 40,
      decoration: BoxDecoration(
          color: ColorConstraints.blue, borderRadius: BorderRadius.circular(5)),
    );
  }
}
