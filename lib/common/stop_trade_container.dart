import 'package:flutter/cupertino.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:vertax_fx/colorconstraint/color_constraint.dart';
import 'package:vertax_fx/common/black_text.dart';
import 'package:vertax_fx/common/error_text.dart';

class StopTradeCon extends StatefulWidget {
  const StopTradeCon({super.key});

  @override
  State<StopTradeCon> createState() => _StopTradeConState();
}

class _StopTradeConState extends State<StopTradeCon> {
  double counter = 0.00;
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      mainAxisAlignment: MainAxisAlignment.start,
      children: [
        ColorText(
            text: "Stop Trade If Equity Less",
            color: ColorConstraints.blue,
            fontsize: 12),
        SizedBox(
          height: 5,
        ),
        Container(
          height: 40,
          width: 140,
          decoration: BoxDecoration(
              border: Border.all(color: ColorConstraints.borderGrey),
              borderRadius: BorderRadius.circular(5)),
          child: Padding(
            padding: const EdgeInsets.only(left: 10, right: 10),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                GestureDetector(
                    onTap: () {
                      setState(() {
                        counter--;
                      });
                    },
                    child: BlackText(text: '-')),
                BlackText(text: counter.toString()),
                GestureDetector(
                    onTap: () {
                      setState(() {
                        counter++;
                      });
                    },
                    child: BlackText(text: '+'))
              ],
            ),
          ),
        ),
        SizedBox(
          height: 5,
        ),
        ColorText(
            text: "Zero or Empty Mean Disabled",
            color: ColorConstraints.red1,
            fontsize: 9)
      ],
    );
  }
}
