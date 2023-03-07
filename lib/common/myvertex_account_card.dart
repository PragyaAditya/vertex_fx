import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:vertax_fx/colorconstraint/color_constraint.dart';
import 'package:vertax_fx/common/black_text.dart';
import 'package:vertax_fx/common/blue_outline_button.dart';
import 'package:vertax_fx/common/blue_text.dart';
import 'package:vertax_fx/common/button.dart';
import 'package:vertax_fx/common/button_without_h.dart';
import 'package:vertax_fx/common/textfield.dart';
import 'package:vertax_fx/translatekeys/translate_keys.dart';

class MyVertexAccountCard extends StatefulWidget {
  const MyVertexAccountCard({super.key});

  @override
  State<MyVertexAccountCard> createState() => _MyVertexAccountCardState();
}

class _MyVertexAccountCardState extends State<MyVertexAccountCard> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20),
      child: Row(
        children: [
          txtcol(),
          Spacer(),
          btncol(),
        ],
      ),
    );
  }

  Widget txtcol() => Container(
        height: MediaQuery.of(context).size.height * 0.1,
        // width: MediaQuery.of(context).size.width,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          // mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            BlackText(text: TranslateKeys.vertexFXDemoSystemtxt),
            SizedBox(
              height: MediaQuery.of(context).size.height * 0.01,
            ),
            Row(
              children: [
                BlueTxet(
                  text: TranslateKeys.AccountIDtxt,
                  fontSize: 11,
                ),
                Text(
                  '122141241231231',
                  style: TextStyle(color: ColorConstraints.grey2, fontSize: 10),
                )
              ],
            ),
            SizedBox(
              height: MediaQuery.of(context).size.height * 0.01,
            ),
            Row(
              children: [
                BlueTxet(
                  text: TranslateKeys.typetxt,
                  fontSize: 11,
                ),
                Text(
                  'Real',
                  style: TextStyle(color: ColorConstraints.grey2, fontSize: 10),
                )
              ],
            )
          ],
        ),
      );
  Widget btncol() => Container(
        height: MediaQuery.of(context).size.height * 0.1,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ButtonWithoutHw(
                onpressed: () {
                  _showMyDialog();
                },
                text: TranslateKeys.chnagePasswordtxt,
                color: ColorConstraints.red,
                width: 0.33,
                height: 0.035),
            SizedBox(height: 5),
            ButtonWithoutHw(
                onpressed: () {},
                text: TranslateKeys.statusNotUsed,
                color: ColorConstraints.green,
                width: 0.33,
                height: 0.035),
          ],
        ),
      );
  Future<void> _showMyDialog() async {
    return showDialog<void>(
      context: context,
      barrierDismissible: false, // user must tap button!
      builder: (BuildContext context) {
        return AlertDialog(
          // title: const Text('AlertDialog Title'),
          content: SingleChildScrollView(
              child: Column(
            children: [
              changePasswordtxt(),
              SizedBox(
                height: 20,
              ),
              oldPassswordField(),
              SizedBox(
                height: 20,
              ),
              newPasswordField(),
              SizedBox(
                height: 20,
              ),
              confirmPasswordField(),
              SizedBox(
                height: 20,
              ),
              btn()
            ],
          )),
        );
      },
    );
  }

  Widget btn() => Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          BlueOutlineButton(
              onpressed: () {
                Navigator.pop(context);
              },
              text: TranslateKeys.canceltxt,
              color: ColorConstraints.white,
              width: 0.3),
          Button(
              onpressed: () {
                Navigator.pop(context);
              },
              text: TranslateKeys.savetxt,
              color: ColorConstraints.blue1,
              width: 0.3)
        ],
      );
  Widget confirmPasswordField() => Center(
      child: PasswordIconTextField(
          labelTxt: TranslateKeys.confirmPassword,
          text: TranslateKeys.confirmPassword,
          hintText: TranslateKeys.confirmPassword));
  Widget newPasswordField() => Center(
      child: PasswordIconTextField(
          labelTxt: TranslateKeys.newPassword,
          text: TranslateKeys.newPassword,
          hintText: TranslateKeys.newPassword));
  Widget oldPassswordField() => Center(
      child: PasswordIconTextField(
          labelTxt: TranslateKeys.oldPasswordtxt,
          text: TranslateKeys.oldPasswordtxt,
          hintText: TranslateKeys.oldPasswordtxt));
  Widget changePasswordtxt() => BlueTxet(
        text: TranslateKeys.changePasswordtxt,
        fontSize: 13,
        fontweight: FontWeight.w600,
      );
}
