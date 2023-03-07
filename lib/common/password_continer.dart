import 'package:flutter/widgets.dart';
import 'package:vertax_fx/colorconstraint/color_constraint.dart';
import 'package:vertax_fx/common/button.dart';
import 'package:vertax_fx/common/error_text.dart';
import 'package:vertax_fx/common/textfield.dart';
import 'package:vertax_fx/translatekeys/translate_keys.dart';

class PasswordContainer extends StatefulWidget {
  const PasswordContainer({super.key});

  @override
  State<PasswordContainer> createState() => _PasswordContainerState();
}

class _PasswordContainerState extends State<PasswordContainer> {
  TextEditingController oldPasswordController = TextEditingController();
  TextEditingController newPasswordController = TextEditingController();

  TextEditingController confirmPasswordController = TextEditingController();
  bool showError = false;
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.only(left: 20, right: 20),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          SizedBox(
            height: MediaQuery.of(context).size.height * 0.07,
          ),
          oldField(),
          SizedBox(
            height: MediaQuery.of(context).size.height * 0.02,
          ),
          newField(),
          SizedBox(
            height: MediaQuery.of(context).size.height * 0.01,
          ),
          showError == true ? errorMessage() : Container(),
          SizedBox(
            height: MediaQuery.of(context).size.height * 0.02,
          ),
          confrimField(),
          SizedBox(
            height: MediaQuery.of(context).size.height * 0.07,
          ),
          notesMessage(),
          SizedBox(
            height: MediaQuery.of(context).size.height * 0.04,
          ),
          saveBtn()
        ],
      ),
    );
  }

  Widget notesMessage() => ColorText(
        text: TranslateKeys.noteSms,
        color: ColorConstraints.green,
        fontsize: 11,
      );
  Widget errorMessage() => ColorText(
        text: TranslateKeys.passwordMustBEAttxt,
        color: ColorConstraints.red,
        fontsize: 12,
      );
  Widget saveBtn() => Align(
        alignment: Alignment.bottomCenter,
        child:
            // Center(
            // child:
            Button(
                onpressed: () {
                  print("password");
                  print(newPasswordController.text);
                  if (newPasswordController.text.length <= 8) {
                    setState(() {
                      showError = true;
                    });
                  }
                },
                text: TranslateKeys.savetxt,
                color: ColorConstraints.blue1,
                width: 0.92),
        // ),
      );
  // Widget errorText()=>
  Widget oldField() => Center(
        child: PasswordIconTextField(
            controller: oldPasswordController,
            labelTxt: TranslateKeys.oldPasswordtxt,
            text: TranslateKeys.oldPasswordtxt,
            hintText: TranslateKeys.oldPasswordtxt),
      );
  Widget newField() => Center(
        child: PasswordIconTextField(
            controller: newPasswordController,
            labelTxt: TranslateKeys.newPassword,
            text: TranslateKeys.newPassword,
            hintText: TranslateKeys.newPassword),
      );
  Widget confrimField() => Center(
        child: PasswordIconTextField(
            controller: confirmPasswordController,
            labelTxt: TranslateKeys.confirmPassword,
            text: TranslateKeys.confirmPassword,
            hintText: TranslateKeys.confirmPassword),
      );
}
