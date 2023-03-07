import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:vertax_fx/colorconstraint/color_constraint.dart';
import 'package:vertax_fx/common/blue_line.dart';
import 'package:vertax_fx/common/button.dart';
import 'package:vertax_fx/common/grey_text.dart';
import 'package:vertax_fx/common/grey_text_without_font_weight.dart';
import 'package:vertax_fx/common/textfield.dart';
import 'package:vertax_fx/translatekeys/translate_keys.dart';

class ForgotPassword extends StatefulWidget {
  const ForgotPassword({super.key});

  @override
  State<ForgotPassword> createState() => _ForgotPasswordState();
}

class _ForgotPasswordState extends State<ForgotPassword> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          elevation: 0,
          backgroundColor: ColorConstraints.white,
          leading: IconButton(
              iconSize: 15,
              onPressed: () {
                Navigator.pop(context);
              },
              icon: Icon(
                Icons.arrow_back_ios,
                color: ColorConstraints.blue,
              )),
        ),
        body: Padding(
          padding: const EdgeInsets.only(top: 50, left: 30, right: 30),
          child: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(
                  height: MediaQuery.of(context).size.height * 0.05,
                ),
                forgotPassTxt(),
                SizedBox(
                  height: 10,
                ),
                blueLine(),
                SizedBox(
                  height: 10,
                ),
                enterYourRegisteredEmailAddressHeretxt(),
                SizedBox(
                  height: MediaQuery.of(context).size.height * 0.2,
                ),
                emailField(),
                SizedBox(
                  height: MediaQuery.of(context).size.height * 0.03,
                ),
                submitBtn(),
                SizedBox(
                  height: MediaQuery.of(context).size.height * 0.18,
                ),
                backTotxt()
              ],
            ),
          ),
        ),
      ),
    );
  }

  Widget forgotPassTxt() => Text(
        TranslateKeys.forgotPasswordTxt,
        style: TextStyle(
            fontSize: 25,
            fontWeight: FontWeight.bold,
            color: ColorConstraints.grey1),
      );
  Widget blueLine() => BlueLine();
  Widget enterYourRegisteredEmailAddressHeretxt() => GreyTextWithoutFW(
      text: TranslateKeys.enterYourRegisteredEmailAddressHeretxt);
  Widget emailField() => Center(
        child: IconTextField(
            labelTxt: TranslateKeys.email,
            text: TranslateKeys.email,
            hintText: TranslateKeys.email),
      );
  Widget submitBtn() => Center(
        child: Button(
            onpressed: () {},
            text: TranslateKeys.submitTxt,
            color: ColorConstraints.blue2,
            width: 0.84),
      );
  Widget backTotxt() => Row(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Center(child: Text(TranslateKeys.backTo)),
          SizedBox(
            width: MediaQuery.of(context).size.width * 0.004,
          ),
          TextButton(
              style: TextButton.styleFrom(
                  padding: EdgeInsets.zero,
                  minimumSize: Size(50, 30),
                  tapTargetSize: MaterialTapTargetSize.shrinkWrap,
                  alignment: Alignment.centerLeft),
              onPressed: () {},
              child: Text(
                'Login',
                style: TextStyle(color: ColorConstraints.black),
              ))
        ],
      );
}
