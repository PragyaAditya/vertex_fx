import 'package:flutter/cupertino.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

class ColorText extends StatelessWidget {
  final String text;
  final Color color;
  final double fontsize ;
  const ColorText({super.key, required this.text, required this.color ,required this.fontsize});

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      style: TextStyle(color: color, fontWeight: FontWeight.w600, fontSize: fontsize),
    );
  }
}
