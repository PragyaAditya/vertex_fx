import 'package:flutter/cupertino.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:vertax_fx/colorconstraint/color_constraint.dart';
import 'package:vertax_fx/common/black_text.dart';
import 'package:vertax_fx/common/error_text.dart';

class CopyContainer extends StatefulWidget {
  const CopyContainer({super.key});

  @override
  State<CopyContainer> createState() => _CopyContainerState();
}

class _CopyContainerState extends State<CopyContainer> {
  int counter = 0;
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        ColorText(
            text: "Copy Percent %", color: ColorConstraints.blue, fontsize: 12),
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
      ],
    );
  }
}

class SlippperContainer extends StatefulWidget {
  const SlippperContainer({super.key});

  @override
  State<SlippperContainer> createState() => _SlippperContainerState();
}

class _SlippperContainerState extends State<SlippperContainer> {
  double counter = 0;
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        ColorText(
            text: "Slippage (Pips)",
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
                        counter += 10;
                      });
                    },
                    child: BlackText(text: '-')),
                BlackText(text: counter.toString()),
                GestureDetector(
                    // onTap: () {
                    //   setState(() {
                    //     counter++;
                    //   });
                    // },
                    child: BlackText(text: '+'))
              ],
            ),
          ),
        ),
      ],
    );
  }
}
