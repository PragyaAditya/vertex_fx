import 'package:flutter/cupertino.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:vertax_fx/colorconstraint/color_constraint.dart';
import 'package:vertax_fx/common/button.dart';
import 'package:vertax_fx/common/textfield.dart';
import 'package:vertax_fx/translatekeys/translate_keys.dart';

class ContactContainer extends StatefulWidget {
  const ContactContainer({super.key});

  @override
  State<ContactContainer> createState() => _ContactContainerState();
}

class _ContactContainerState extends State<ContactContainer> {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SizedBox(
          height: MediaQuery.of(context).size.height * 0.05,
        ),
        emailField(),
        SizedBox(
          height: MediaQuery.of(context).size.height * 0.02,
        ),
        cityField(),
        SizedBox(
          height: MediaQuery.of(context).size.height * 0.02,
        ),
        countryField(),
        SizedBox(
          height: MediaQuery.of(context).size.height * 0.02,
        ),
        phoneField(),
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
  Widget phoneField() => IconTextField(
      labelTxt: TranslateKeys.phoneTxt,
      text: TranslateKeys.phoneTxt,
      hintText: TranslateKeys.phoneTxt);
  Widget cityField() => IconTextField(
      labelTxt: TranslateKeys.citytxt,
      text: TranslateKeys.citytxt,
      hintText: TranslateKeys.citytxt);
  Widget emailField() => IconTextField(
      labelTxt: TranslateKeys.email,
      text: TranslateKeys.email,
      hintText: TranslateKeys.email);
}
