import 'package:flutter/cupertino.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:vertax_fx/colorconstraint/color_constraint.dart';
import 'package:vertax_fx/common/button.dart';
import 'package:vertax_fx/common/textfield.dart';
import 'package:vertax_fx/translatekeys/translate_keys.dart';

class PersonalContainer extends StatefulWidget {
  const PersonalContainer({super.key});

  @override
  State<PersonalContainer> createState() => _PersonalContainerState();
}

class _PersonalContainerState extends State<PersonalContainer> {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SizedBox(
          height: MediaQuery.of(context).size.height * 0.08,
        ),
        fullNameField(),
        SizedBox(
          height: MediaQuery.of(context).size.height * 0.02,
        ),
        signalField(),
        SizedBox(
          height: MediaQuery.of(context).size.height * 0.02,
        ),
        countryField(),
        SizedBox(
          height: MediaQuery.of(context).size.height * 0.15,
        ),
        saveBtn()
      ],
    );
  }

  Widget saveBtn() => Button(
      onpressed: () {},
      text: TranslateKeys.savetxt,
      color: ColorConstraints.blue,
      width: 0.88);
  Widget countryField() => IconTextDropDownField(
      labelTxt: TranslateKeys.Country,
      text: TranslateKeys.Country,
      hintText: TranslateKeys.Country);
  Widget signalField() => IconTextField(
      labelTxt: TranslateKeys.singnalTXt,
      text: TranslateKeys.singnalTXt,
      hintText: TranslateKeys.singnalTXt);
  Widget fullNameField() => IconTextField(
      labelTxt: TranslateKeys.fullNameTxt,
      text: TranslateKeys.fullNameTxt,
      hintText: TranslateKeys.fullNameTxt);
}
