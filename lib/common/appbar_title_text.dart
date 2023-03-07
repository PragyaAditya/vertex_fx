import 'package:flutter/cupertino.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:vertax_fx/colorconstraint/color_constraint.dart';

class AppBarTitleText extends StatelessWidget {
  final String text;
  const AppBarTitleText({super.key, required this.text});

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      style: TextStyle(
          color: ColorConstraints.blue1,
          fontSize: 15,
          fontWeight: FontWeight.w600),
    );
  }
}
