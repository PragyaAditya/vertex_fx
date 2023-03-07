import 'package:flutter/cupertino.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:vertax_fx/colorconstraint/color_constraint.dart';

class ColonText extends StatelessWidget {
  const ColonText({super.key});

  @override
  Widget build(BuildContext context) {
    return  Text(
            ':',
            style: TextStyle(color: ColorConstraints.grey3),
          );
  }
}