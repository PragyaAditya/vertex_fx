import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:vertax_fx/colorconstraint/color_constraint.dart';
import 'package:vertax_fx/common/cupertino_switchbtn.dart';
import 'package:vertax_fx/common/error_text.dart';
import 'package:vertax_fx/common/grey_text.dart';
import 'package:vertax_fx/common/switchBtn.dart';
import 'package:vertax_fx/common/textfield.dart';
import 'package:vertax_fx/translatekeys/translate_keys.dart';

class InformationContainer extends StatefulWidget {
  const InformationContainer({super.key});

  @override
  State<InformationContainer> createState() => _InformationContainerState();
}

class _InformationContainerState extends State<InformationContainer> {
  TextEditingController nameController = TextEditingController();
  bool valueB = false;
  bool freeValue = false;
  bool AutoValue = false;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 10, right: 10),
      child: Container(
          child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          SizedBox(
            height: MediaQuery.of(context).size.height * 0.04,
          ),
          nameField(),
          SizedBox(
            height: MediaQuery.of(context).size.height * 0.01,
          ),
          errorMessage(),
          SizedBox(
            height: MediaQuery.of(context).size.height * 0.01,
          ),
          Divider(
            thickness: 1,
            color: ColorConstraints.borderGrey,
            endIndent: 10,
            indent: 10,
          ),
          SizedBox(
            height: MediaQuery.of(context).size.height * 0.01,
          ),
          accountField(),
          SizedBox(
            height: MediaQuery.of(context).size.height * 0.01,
          ),
          makeSignaltxt(),
          SizedBox(
            height: MediaQuery.of(context).size.height * 0.01,
          ),
          Divider(
            thickness: 1,
            color: ColorConstraints.borderGrey,
            endIndent: 10,
            indent: 10,
          ),
          pricetxt(),
          SizedBox(
            height: MediaQuery.of(context).size.height * 0.01,
          ),
          freetxt(),
          dollerTextfield(),
          autoAccepttxt(),
          SizedBox(
            height: MediaQuery.of(context).size.height * 0.22,
          ),
        ],
      )),
    );
  }

  Widget dollerTextfield() => Row(
        children: [DollerTextField()],
      );
  Widget freetxt() => Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(
            TranslateKeys.freetxt,
            style: TextStyle(color: ColorConstraints.textgrey),
          ),
          CurpertinoSwitchBtn(
              value: freeValue,
              onChanged: (value) {
                setState(() {
                  freeValue = value;
                });
              })
        ],
      );
  Widget autoAccepttxt() => Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(
            TranslateKeys.autoAcceptSubscriptionTXt,
            style: TextStyle(color: ColorConstraints.textgrey),
          ),
          CurpertinoSwitchBtn(
              value: AutoValue,
              onChanged: (value) {
                setState(() {
                  AutoValue = value;
                });
              })
        ],
      );
  Widget pricetxt() => GreyText(text: TranslateKeys.priceTxt);
  Widget makeSignaltxt() => Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Text(
            TranslateKeys.makeSignalIncognitoTxt,
            style: TextStyle(color: ColorConstraints.textgrey),
          ),
          // GreyText(text: TranslateKeys.makeSignalIncognitoTxt),
          CurpertinoSwitchBtn(
              value: valueB,
              onChanged: (value) {
                setState(() {
                  valueB = value;
                });
              })
        ],
      );

  Widget accountField() => Center(
        child: IconTextField(
            labelTxt: TranslateKeys.accountIdtxt,
            text: TranslateKeys.accountIdtxt,
            hintText: TranslateKeys.accountIdtxt),
      );

  Widget errorMessage() => ColorText(
      text: TranslateKeys.signalNameCanONlytxt,
      color: ColorConstraints.red,
      fontsize: 10);

  Widget nameField() => IconTextField(
      controller: nameController,
      labelTxt: TranslateKeys.nametxt,
      text: TranslateKeys.nametxt,
      hintText: TranslateKeys.nametxt);
}
