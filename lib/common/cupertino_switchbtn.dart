import 'package:flutter/cupertino.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:vertax_fx/colorconstraint/color_constraint.dart';

class CurpertinoSwitchBtn extends StatelessWidget {
  final bool value;
  final void Function(bool) onChanged;
  const CurpertinoSwitchBtn(
      {super.key, required this.value, required this.onChanged});

  @override
  Widget build(BuildContext context) {
    return Transform.scale(
        scale: 0.7,
        child: CupertinoSwitch(
            // overrides the default green color of the track
            activeColor: ColorConstraints.blue,
            // color of the round icon, which moves from right to left
            thumbColor: ColorConstraints.white,
            // when the switch is off
            trackColor: ColorConstraints.greySwitch,
            // boolean variable value
            value: value,
            // changes the state of the switch
            onChanged: onChanged
            // (value) => setState(() => forIos = value),
            ));
  }
}
