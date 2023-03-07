import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:vertax_fx/colorconstraint/color_constraint.dart';

class ArrowForwordText extends StatelessWidget {
  final Function() ?onpressed;
  const ArrowForwordText({super.key,required this.onpressed});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onpressed ,
      child: Row(
        children: [
          Text(
            "Next",
            style: TextStyle(
                color: ColorConstraints.blue, fontWeight: FontWeight.bold),
          ),
          Icon(
            Icons.arrow_forward_ios_sharp,
            color: ColorConstraints.blue,
            size: 13,
          ),
        ],
      ),
    );
  }
}
