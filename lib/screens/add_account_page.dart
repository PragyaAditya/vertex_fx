import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:get/get.dart';
import 'package:vertax_fx/colorconstraint/color_constraint.dart';
import 'package:vertax_fx/common/appbar_title_text.dart';
import 'package:vertax_fx/common/blue_line.dart';
import 'package:vertax_fx/common/button.dart';
import 'package:vertax_fx/common/grey_text.dart';
import 'package:vertax_fx/common/textfield.dart';
import 'package:vertax_fx/translatekeys/translate_keys.dart';

class AddAccountPage extends StatefulWidget {
  const AddAccountPage({super.key});

  @override
  State<AddAccountPage> createState() => _AddAccountPageState();
}

class _AddAccountPageState extends State<AddAccountPage> {
  bool isChecked = false;
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          centerTitle: true,
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
          padding: const EdgeInsets.all(20),
          child: SingleChildScrollView(
            child:
                Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
              SizedBox(
                height: MediaQuery.of(context).size.height * 0.01,
              ),
              VertexFxTxt(),
              SizedBox(
                height: MediaQuery.of(context).size.height * 0.04,
              ),
              addVertexfXAccounttxt(),
              SizedBox(
                height: MediaQuery.of(context).size.height * 0.01,
              ),
              BlueLine(),
              SizedBox(
                height: MediaQuery.of(context).size.height * 0.02,
              ),
              pleaseSpecifytxt(),
              SizedBox(
                height: MediaQuery.of(context).size.height * 0.02,
              ),
              VertexFXUsernameField(),
              SizedBox(
                height: MediaQuery.of(context).size.height * 0.02,
              ),
              accountField(),
              SizedBox(
                height: MediaQuery.of(context).size.height * 0.02,
              ),
              PaswordField(),
              SizedBox(
                height: MediaQuery.of(context).size.height * 0.02,
              ),
              ConfirmPaswordField(),
              SizedBox(
                height: MediaQuery.of(context).size.height * 0.02,
              ),
              serverField(),
              SizedBox(
                height: MediaQuery.of(context).size.height * 0.01,
              ),
              checboxrow(),
              SizedBox(
                height: MediaQuery.of(context).size.height * 0.01,
              ),
              addAccountBt()
            ]),
          ),
        ),
      ),
    );
  }

  Widget addAccountBt() => Button(
      onpressed: () {},
      text: TranslateKeys.addAccount,
      color: ColorConstraints.blue,
      width: 1);
  Widget checboxrow() => Row(
        children: [
          Checkbox(
              value: isChecked,
              onChanged: (Value) {
                setState(() {
                  isChecked = !isChecked;
                });
              }),
          GreyText(text: TranslateKeys.iHaveReadAndTxt)
        ],
      );
  Widget VertexFXUsernameField() => Center(
        child: IconTextField(
            labelTxt: TranslateKeys.vertexfxUsername,
            text: TranslateKeys.vertexfxUsername,
            hintText: TranslateKeys.vertexfxUsername),
      );
  Widget accountField() => Center(
        child: IconTextField(
            labelTxt: TranslateKeys.accountIdtxt,
            text: TranslateKeys.accountIdtxt,
            hintText: TranslateKeys.accountIdtxt),
      );
  Widget serverField() => IconTextDropDownField(
      labelTxt: TranslateKeys.serverName,
      text: TranslateKeys.serverName,
      hintText: TranslateKeys.serverName);
  Widget PaswordField() => Center(
        child: PasswordIconTextField(
            labelTxt: TranslateKeys.passwordtxt,
            text: TranslateKeys.passwordtxt,
            hintText: TranslateKeys.passwordtxt),
      );
  Widget ConfirmPaswordField() => Center(
        child: PasswordIconTextField(
            labelTxt: TranslateKeys.confirmPassword,
            text: TranslateKeys.confirmPassword,
            hintText: TranslateKeys.confirmPassword),
      );
  Widget pleaseSpecifytxt() => Text(
        TranslateKeys.pleaseSpecifytxt,
        style: TextStyle(color: ColorConstraints.green, fontSize: 12),
      );
  Widget addVertexfXAccounttxt() => Text(
        TranslateKeys.addVertexfxAccounttx,
        style: TextStyle(fontSize: 25, fontWeight: FontWeight.w700),
      );
  Widget VertexFxTxt() => Padding(
        padding: const EdgeInsets.only(left: 40),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Text(
              "VertexFX",
              style: TextStyle(
                  color: ColorConstraints.yellow1,
                  fontSize: 18,
                  fontWeight: FontWeight.bold),
            ),
            Text(
              "Social Trading",
              style: TextStyle(
                  color: ColorConstraints.blue,
                  fontSize: 30,
                  fontWeight: FontWeight.bold),
            )
          ],
        ),
      );
}
