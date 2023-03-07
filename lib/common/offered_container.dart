import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:vertax_fx/colorconstraint/color_constraint.dart';
import 'package:vertax_fx/common/button.dart';
import 'package:vertax_fx/translatekeys/translate_keys.dart';

class OfferedContainer extends StatefulWidget {
  const OfferedContainer({super.key});

  @override
  State<OfferedContainer> createState() => _OfferedContainerState();
}

class _OfferedContainerState extends State<OfferedContainer> {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SizedBox(
          height: MediaQuery.of(context).size.height * 0.01,
        ),
        firstRow(),
        correncyRow(),
        Divider(
          thickness: 1,
          color: ColorConstraints.borderGrey,
          endIndent: 10,
          indent: 10,
        ),
        correncyRow(),
        Divider(
          thickness: 1,
          color: ColorConstraints.borderGrey,
          endIndent: 10,
          indent: 10,
        ),
        correncyRow(),
        Divider(
          thickness: 1,
          color: ColorConstraints.borderGrey,
          endIndent: 10,
          indent: 10,
        ),
        correncyRow(),
        Divider(
          thickness: 1,
          color: ColorConstraints.borderGrey,
          endIndent: 10,
          indent: 10,
        ),
        correncyRow(),
        Divider(
          thickness: 1,
          color: ColorConstraints.borderGrey,
          endIndent: 10,
          indent: 10,
        ),
        correncyRow(),
        Divider(
          thickness: 1,
          color: ColorConstraints.borderGrey,
          endIndent: 10,
          indent: 10,
        ),
        correncyRow(),
        Divider(
          thickness: 1,
          color: ColorConstraints.borderGrey,
          endIndent: 10,
          indent: 10,
        ),
        SizedBox(
          height: MediaQuery.of(context).size.height * 0.35,
        ),
      ],
    );
  }

  Widget firstRow() => Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(
            TranslateKeys.selectedtxt,
            style: TextStyle(color: ColorConstraints.textgrey),
          ),
          Button(
              onpressed: () {},
              text: TranslateKeys.deselectAllTXt,
              color: ColorConstraints.blue,
              width: 0.35)
        ],
      );
  Widget correncyRow() => Row(
        children: [
          Container(
            height: 20,
            width: 20,
            decoration: BoxDecoration(
                shape: BoxShape.circle,
                color: ColorConstraints.white,
                border: Border.all(color: ColorConstraints.borderGrey)),
          ),
          SizedBox(
            width: 10,
          ),
          Text(
            'AUD/ CAD',
            style: TextStyle(color: ColorConstraints.blue),
          ),
        ],
      );
}
