import 'package:flutter/cupertino.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:vertax_fx/colorconstraint/color_constraint.dart';

class BlueTxet extends StatelessWidget {
  final String text;
  final double fontSize;
  FontWeight? fontweight;
  BlueTxet(
      {super.key, required this.text, required this.fontSize, this.fontweight});

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      style: TextStyle(
          color: ColorConstraints.blue1,
          fontSize: fontSize,
          fontWeight: fontweight),
    );
  }
}
