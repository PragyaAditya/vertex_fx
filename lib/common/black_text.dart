import 'package:flutter/cupertino.dart';
import 'package:vertax_fx/colorconstraint/color_constraint.dart';

class BlackText extends StatelessWidget {
  final String text;
  const BlackText({super.key, required this.text});

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Text(text,
          style: TextStyle(
              fontSize: 14,
              fontWeight: FontWeight.w600,
              color: ColorConstraints.black)),
    );
  }
}
