import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'package:vertax_fx/colorconstraint/color_constraint.dart';

class AppCheckBox extends StatefulWidget {
  const AppCheckBox({Key? key}) : super(key: key);

  @override
  State<AppCheckBox> createState() => _AppCheckBoxState();
}

class _AppCheckBoxState extends State<AppCheckBox> {
  bool isChecked = false;

  @override
  Widget build(BuildContext context) {
    // Color getColor(Set<MaterialState> states) {
    //   const Set<MaterialState> interactiveStates = <MaterialState>{
    //     MaterialState.pressed,
    //     MaterialState.hovered,
    //     MaterialState.focused,
    //   };
    //   if (states.any(interactiveStates.contains)) {
    //     return Colors.blue;
    //   }
    //   return ColorConstants.BlueColor;
    // }

    return
        //  Container(
        //   height: 20,
        //   width: 20,
        //   decoration: BoxDecoration(
        //     borderRadius: BorderRadius.circular(5),
        //     color: ColorConstraints.grey4,
        //   ),
        //   child:
        Checkbox(
      checkColor: ColorConstraints.blue2,
      fillColor: MaterialStateProperty.all(
        ColorConstraints.grey4,
      ),
      value: isChecked,
      onChanged: (bool? value) {
        setState(() {
          isChecked = value!;
        });
      },
      // ),
    );
  }
}
