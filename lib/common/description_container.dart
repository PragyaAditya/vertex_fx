import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:vertax_fx/colorconstraint/color_constraint.dart';
import 'package:vertax_fx/common/blue_text.dart';
import 'package:vertax_fx/common/button.dart';
import 'package:vertax_fx/translatekeys/translate_keys.dart';

class DescriptionContainer extends StatefulWidget {
  const DescriptionContainer({super.key});

  @override
  State<DescriptionContainer> createState() => _DescriptionContainerState();
}

class _DescriptionContainerState extends State<DescriptionContainer> {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.only(left: 20, right: 20),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          SizedBox(
            height: 30,
          ),
          descriptionTXt(),
          SizedBox(
            height: 10,
          ),
          textfield(),
          SizedBox(
            height: 60,
          ),
          saveBtn()
        ],
      ),
    );
  }

  Widget textfield() => Container(
        width: double.infinity,
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(10),
            border: Border.all(color: ColorConstraints.grey0)),
        child: Padding(
          padding: const EdgeInsets.only(left: 10, bottom: 10, right: 5),
          child: TextFormField(
            style: TextStyle(color: ColorConstraints.textgrey),
            minLines: 10,
            maxLines: 12,
            maxLength: 150,
            decoration: InputDecoration(
              contentPadding: EdgeInsets.all(10),
              border: InputBorder.none,
              hintText: "Enter your Description",
            ),
          ),
        ),
      );
  Widget descriptionTXt() =>
      BlueTxet(text: TranslateKeys.descriptiontxt, fontSize: 10);
  Widget saveBtn() => Align(
        alignment: Alignment.bottomCenter,
        child:
            // Center(
            // child:
            Button(
                onpressed: () {},
                text: TranslateKeys.savetxt,
                color: ColorConstraints.blue1,
                width: 0.79),
        // ),
      );
}
