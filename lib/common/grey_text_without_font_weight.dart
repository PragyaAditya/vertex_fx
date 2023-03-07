import 'package:flutter/material.dart';
import 'package:vertax_fx/colorconstraint/color_constraint.dart';

class GreyTextWithoutFW extends StatelessWidget {
  final String text;
  const GreyTextWithoutFW({super.key, required this.text});

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Text(text,
          style: TextStyle(
              fontSize: 13,
              fontWeight: FontWeight.w500,
              color: ColorConstraints.grey3)),
    );
  }
}
