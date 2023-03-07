import 'package:flutter/cupertino.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:vertax_fx/colorconstraint/color_constraint.dart';

class YellowText extends StatelessWidget {
  final String text ;
  const YellowText({super.key,required this.text});

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      style: TextStyle(color: ColorConstraints.yellow1),
    );
  }
}
