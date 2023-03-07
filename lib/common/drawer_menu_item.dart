import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:vertax_fx/colorconstraint/color_constraint.dart';

class DrawerMenuItem extends StatelessWidget {
  final String image;
  final String text;
  final Function() onpressed;

  DrawerMenuItem(
      {super.key,
      required this.image,
      required this.text,
      required this.onpressed});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onpressed,
      child: Row(
        children: [
          SvgPicture.asset(height: 15, width: 20, image),
          SizedBox(
            width: 20,
          ),
          Text(
            text,
            style: TextStyle(
                fontSize: 15,
                color: ColorConstraints.blue,
                fontWeight: FontWeight.w600),
          )
        ],
      ),
    );
  }
}
