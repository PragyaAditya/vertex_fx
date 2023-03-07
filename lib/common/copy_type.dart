import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:vertax_fx/colorconstraint/color_constraint.dart';
import 'package:vertax_fx/common/error_text.dart';
import 'package:vertax_fx/common/grey_text.dart';

class CopyType extends StatefulWidget {
  const CopyType({super.key});

  @override
  State<CopyType> createState() => _CopyTypeState();
}

class _CopyTypeState extends State<CopyType> {
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        ColorText(
            text: "Copy type:", color: ColorConstraints.blue, fontsize: 12),
        SizedBox(
          width: 5,
        ),
        conTextRow(),
      ],
    );
  }

  Widget conTextRow() => Row(children: [
        iconTextIcProvider(text: "Both Side"),
        SizedBox(
          width: 10,
        ),
        iconTextIcProvider(text: "Buy Only"),
        SizedBox(
          width: 10,
        ),
        iconTextIcProvider(text: "Sell Only")
      ]);
}

class iconTextIcProvider extends StatelessWidget {
  final String text;
  const iconTextIcProvider({super.key, required this.text});

  @override
  Widget build(BuildContext context) {
    return Row(children: [
      Container(
        height: 15,
        width: 20,
        decoration: BoxDecoration(
            shape: BoxShape.circle,
            color: ColorConstraints.white,
            border: Border.all(color: ColorConstraints.borderGrey)),
      ),
      Text(text,
          style: TextStyle(
              fontSize: 13,
              // fontWeight: FontWeight.w600,
              color: ColorConstraints.grey3))
    ]);
  }
}
