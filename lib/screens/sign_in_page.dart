import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:vertax_fx/colorconstraint/color_constraint.dart';
import 'package:vertax_fx/common/button.dart';
import 'package:vertax_fx/common/blue_line.dart';
import 'package:vertax_fx/common/grey_line.dart';
import 'package:vertax_fx/common/icon_button.dart';
import 'package:vertax_fx/common/textfield.dart';
import 'package:vertax_fx/screens/forgot_password.dart';
import 'package:vertax_fx/screens/sigh_up.dart';
import 'package:vertax_fx/translatekeys/translate_keys.dart';

class SignInPage extends StatefulWidget {
  const SignInPage({super.key});

  @override
  State<SignInPage> createState() => _SignInPageState();
}

class _SignInPageState extends State<SignInPage> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.all(30),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(
                  height: MediaQuery.of(context).size.height * 0.01,
                ),
                signInTxt(),
                SizedBox(
                  height: MediaQuery.of(context).size.height * 0.02,
                ),
                blueLine(),
                SizedBox(
                  height: MediaQuery.of(context).size.height * 0.2,
                ),
                emailField(),
                SizedBox(
                  height: MediaQuery.of(context).size.height * 0.02,
                ),
                passwordtxt(),
                forgetPasswordTxt(),
                SizedBox(
                  height: MediaQuery.of(context).size.height * 0.02,
                ),
                signInBtn(),
                SizedBox(
                  height: MediaQuery.of(context).size.height * 0.02,
                ),
                orConnectWithTxt(),
                SizedBox(
                  height: MediaQuery.of(context).size.height * 0.02,
                ),
                Btn(),
                SizedBox(
                  height: MediaQuery.of(context).size.height * 0.1,
                ),
                donthaveaccountTxt()
              ],
            ),
          ),
        ),
      ),
    );
  }

  Widget signInTxt() => Text(
        TranslateKeys.sighIntxt,
        style: TextStyle(
            fontSize: 25,
            fontWeight: FontWeight.bold,
            color: ColorConstraints.grey1),
      );
  Widget blueLine() => BlueLine();

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

  Widget forgetPasswordTxt() => Row(
        children: [
          Spacer(),
          TextButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => ForgotPassword()),
                );
              },
              child: Text(
                TranslateKeys.forgetPasswordTxt,
                style: TextStyle(color: ColorConstraints.grey3),
              )),
        ],
      );
  Widget signInBtn() => Center(
        child: Button(
            onpressed: () {},
            text: TranslateKeys.sighIntxt,
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

  Widget donthaveaccountTxt() => Row(
        // crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            TranslateKeys.dontHaveAnAccountTxt,
            style: TextStyle(color: ColorConstraints.grey3),
          ),
          TextButton(
              style: TextButton.styleFrom(
                  padding: EdgeInsets.zero,
                  minimumSize: Size(50, 30),
                  tapTargetSize: MaterialTapTargetSize.shrinkWrap,
                  alignment: Alignment.centerLeft),
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => SignUpPage()),
                );
              },
              child: Text(
                "Sign Up",
                style: TextStyle(
                    color: ColorConstraints.blue3, fontWeight: FontWeight.bold),
              ))
        ],
      );
}
