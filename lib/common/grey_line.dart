import 'package:flutter/material.dart';
import 'package:vertax_fx/colorconstraint/color_constraint.dart';

class Greycontainer extends StatelessWidget {
  const Greycontainer({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 1,
      width: MediaQuery.of(context).size.width * 0.27,
      color: ColorConstraints.grey0,
    );
  }
}
