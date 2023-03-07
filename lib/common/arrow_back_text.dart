import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:vertax_fx/colorconstraint/color_constraint.dart';

class ArrowBackText extends StatelessWidget {
  final Function()? onpressed ;
  const ArrowBackText({super.key,required this.onpressed});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onpressed,
      child: Row(
        children: [
          Icon(
            Icons.arrow_back_ios_new_outlined,
            color: ColorConstraints.blue,
            size: 13,
          ),
          Text(
            "Pre.",
            style: TextStyle(
                color: ColorConstraints.blue, fontWeight: FontWeight.bold),
          )
        ],
      ),
    );
  }
}
