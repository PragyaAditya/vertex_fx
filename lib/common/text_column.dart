import 'dart:io';

import 'package:flutter/cupertino.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:vertax_fx/common/black_text.dart';
import 'package:vertax_fx/common/grey_text.dart';

class Textcolumn extends StatelessWidget {
  final String number;
  final String text;
  const Textcolumn({super.key, required this.number, required this.text});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        GreyText(text: number),
        SizedBox(
          height: MediaQuery.of(context).size.height * 0.01,
        ),
        BlackText(text: text)
      ],
    );
  }
}
