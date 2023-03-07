import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:vertax_fx/colorconstraint/color_constraint.dart';
import 'package:vertax_fx/common/blue_line.dart';
import 'package:vertax_fx/common/button.dart';
import 'package:vertax_fx/common/checkbox.dart';
import 'package:vertax_fx/common/grey_line.dart';
import 'package:vertax_fx/common/grey_text.dart';
import 'package:vertax_fx/common/grey_text_without_font_weight.dart';
import 'package:vertax_fx/common/icon_button.dart';
import 'package:vertax_fx/common/textfield.dart';
import 'package:vertax_fx/screens/Home_page.dart';
import 'package:vertax_fx/translatekeys/translate_keys.dart';

class SignUpPage extends StatefulWidget {
  const SignUpPage({super.key});

  @override
  State<SignUpPage> createState() => _SignUpPageState();
}

class _SignUpPageState extends State<SignUpPage> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
            appBar: AppBar(
              elevation: 0,
              leading: IconButton(
                icon: Icon(
                  Icons.arrow_back_ios,
                  color: ColorConstraints.black,
                ),
                onPressed: () {
                  Navigator.pop(context);
                },
                // Icons.arrow_back_ios,
                // color: ColorConstraints.black,
              ),
              backgroundColor: ColorConstraints.white,
            ),
            body: SingleChildScrollView(
              child: Padding(
                padding: const EdgeInsets.all(30),
                child: SingleChildScrollView(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      // SizedBox(
                      //   height: MediaQuery.of(context).size.height * 0.00,
                      // ),
                      signUpTxt(),
                      SizedBox(
                        height: MediaQuery.of(context).size.height * 0.01,
                      ),
                      blueLine(),
                      SizedBox(
                        height: MediaQuery.of(context).size.height * 0.01,
                      ),
                      reduceTradingRisktxt(),
                      SizedBox(
                        height: MediaQuery.of(context).size.height * 0.06,
                      ),
                      fullnamefield(),
                      SizedBox(
                        height: MediaQuery.of(context).size.height * 0.02,
                      ),
                      emailField(),
                      SizedBox(
                        height: MediaQuery.of(context).size.height * 0.02,
                      ),
                      passwordtxt(),
                      SizedBox(
                        height: MediaQuery.of(context).size.height * 0.02,
                      ),
                      confrimPasswordtxt(),
                      SizedBox(
                        height: MediaQuery.of(context).size.height * 0.02,
                      ),
                      countrytxt(),
                      SizedBox(
                        height: MediaQuery.of(context).size.height * 0.02,
                      ),
                      iHaveTxt(),
                      SizedBox(
                        height: MediaQuery.of(context).size.height * 0.02,
                      ),
                      connectBtn(),
                      SizedBox(
                        height: MediaQuery.of(context).size.height * 0.02,
                      ),
                      orConnectWithTxt(),
                      SizedBox(
                        height: MediaQuery.of(context).size.height * 0.02,
                      ),
                      Btn()
                    ],
                  ),
                ),
              ),
            )));
  }

  Widget signUpTxt() => Text(
        TranslateKeys.signUpTXt,
        style: TextStyle(
            fontSize: 25,
            fontWeight: FontWeight.bold,
            color: ColorConstraints.grey1),
      );
  Widget blueLine() => BlueLine();
  Widget reduceTradingRisktxt() =>
      GreyTextWithoutFW(text: TranslateKeys.reduceTradingRiskFollowExperts);

  Widget fullnamefield() => Center(
        child: IconTextField(
            labelTxt: TranslateKeys.fullNameTxt,
            text: TranslateKeys.fullNameTxt,
            hintText: TranslateKeys.fullNameTxt),
      );
  Widget emailField() => Center(
        child: IconTextField(
            labelTxt: TranslateKeys.email,
            text: TranslateKeys.email,
            hintText: TranslateKeys.email),
      );
  Widget passwordtxt() => Center(
        child: PasswordIconTextField(
            labelTxt: TranslateKeys.passwordtxt,
            text: TranslateKeys.passwordtxt,
            hintText: TranslateKeys.passwordtxt),
      );
  Widget confrimPasswordtxt() => Center(
        child: PasswordIconTextField(
            labelTxt: TranslateKeys.ConfirmPasswordTxt,
            text: TranslateKeys.ConfirmPasswordTxt,
            hintText: TranslateKeys.ConfirmPasswordTxt),
      );
  Widget countrytxt() => Center(
        child: PasswordIconTextField(
            labelTxt: TranslateKeys.Country,
            text: TranslateKeys.Country,
            hintText: TranslateKeys.Country),
      );
  Widget iHaveTxt() => Row(
        children: [
          AppCheckBox(),
          GreyText(text: TranslateKeys.iHaveReadAndTxt)
        ],
      );
  Widget connectBtn() => Center(
        child: Button(
            onpressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => HomePage()),
              );
            },
            text: TranslateKeys.ConnectTxt,
            color: ColorConstraints.blue1,
            width: 0.79),
      );
  Widget orConnectWithTxt() => Row(
        children: [
          Greycontainer(),
          Padding(
            padding: const EdgeInsets.only(left: 4, right: 4),
            child: Text(
              TranslateKeys.orConnectWithTxt,
              style: TextStyle(color: ColorConstraints.grey2, fontSize: 12),
            ),
          ),
          Greycontainer()
        ],
      );
  Widget Btn() => Row(
        children: [
          IconBtn(
              onpressed: () {},
              logoimage: SvgPicture.asset(
                  height: 15, width: 20, 'assets/Group 1062.svg'),
              text: TranslateKeys.facebookTxt,
              color: ColorConstraints.blue2,
              width: 0.4),
          Spacer(),
          IconBtn(
              logoimage: SvgPicture.asset(
                  height: 15, width: 20, 'assets/Group 1061.svg'),
              onpressed: () {},
              text: TranslateKeys.googleTxt,
              color: ColorConstraints.red,
              width: 0.4),
        ],
      );
}
