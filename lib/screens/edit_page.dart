import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:vertax_fx/colorconstraint/color_constraint.dart';
import 'package:vertax_fx/common/appbar_title_text.dart';
import 'package:vertax_fx/common/blue_text.dart';
import 'package:vertax_fx/common/button_without_h.dart';
import 'package:vertax_fx/common/contact_container.dart';
import 'package:vertax_fx/common/description_container.dart';
import 'package:vertax_fx/common/flag_container.dart';
import 'package:vertax_fx/common/password_continer.dart';
import 'package:vertax_fx/common/social_network_container.dart';
import 'package:vertax_fx/common/switchBtn.dart';
import 'package:vertax_fx/screens/personal_container.dart';
import 'package:vertax_fx/translatekeys/translate_keys.dart';

class EditPage extends StatefulWidget {
  const EditPage({super.key});

  @override
  State<EditPage> createState() => _EditPageState();
}

class _EditPageState extends State<EditPage> {
  bool personalTXt = false;
  bool contacttxt = false;
  bool socialNetworktxt = false;
  bool Descriptiontxt = false;
  bool passwordtxt = false;
  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
      backgroundColor: ColorConstraints.white,
      appBar: AppBar(
        centerTitle: true,
        title: AppBarTitleText(
          text: TranslateKeys.editProfile,
        ),
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
      body: SingleChildScrollView(
        child: Column(
          children: [
            SizedBox(
              height: MediaQuery.of(context).size.height * 0.03,
            ),
            profileRow(),
            Divider(
              indent: 10,
              endIndent: 10,
            ),
            SizedBox(
              height: 10,
            ),
            btnRow(),
            diffContainers()
          ],
        ),
      ),
    ));
  }

  Widget diffContainers() {
    if (personalTXt == true) {
      return PersonalContainer();
    } else if (contacttxt == true) {
      return ContactContainer();
    } else if (socialNetworktxt == true) {
      return socialNetworkCon();
    } else if (Descriptiontxt == true) {
      return descriptionCon();
    } else if (passwordtxt == true) {
      return passwordContainer();
    }
    return Container();
  }

  Widget passwordContainer() =>
      passwordtxt == true ? PasswordContainer() : Container();
  Widget descriptionCon() =>
      Descriptiontxt == true ? DescriptionContainer() : Container();
  Widget socialNetworkCon() =>
      socialNetworktxt == true ? SocialMediaContainer() : Container();
  Widget btnRow() => SingleChildScrollView(
        scrollDirection: Axis.horizontal,
        child: Row(
          children: [
            SizedBox(
              width: 20,
            ),
            SwitchBtnwithoutC(
              onpressed: () {
                setState(() {
                  personalTXt = true;
                  contacttxt = false;
                  socialNetworktxt = false;
                  Descriptiontxt = false;
                  passwordtxt = false;
                });
              },
              text: "Personal",
              width: 0.3,
              height: 0.05,
              color: personalTXt == true
                  ? ColorConstraints.blue1
                  : ColorConstraints.textgrey,
            ),
            SwitchBtn(
                onpressed: () {
                  setState(() {
                    personalTXt = false;
                    contacttxt = true;
                    socialNetworktxt = false;
                    Descriptiontxt = false;
                    passwordtxt = false;
                  });
                },
                text: "Contact",
                // color: ColorConstraints.red,
                width: 0.3,
                height: 0.05,
                color: contacttxt == true
                    ? ColorConstraints.blue1
                    : ColorConstraints.textgrey),
            SwitchBtn(
                onpressed: () {
                  setState(() {
                    personalTXt = false;
                    contacttxt = false;
                    socialNetworktxt = true;
                    Descriptiontxt = false;
                    passwordtxt = false;
                  });
                },
                text: "Social Network",
                // color: ColorConstraints.red,
                width: 0.36,
                height: 0.05,
                color: socialNetworktxt == true
                    ? ColorConstraints.blue1
                    : ColorConstraints.textgrey),
            SwitchBtn(
                onpressed: () {
                  setState(() {
                    personalTXt = false;
                    contacttxt = false;
                    socialNetworktxt = false;
                    Descriptiontxt = true;
                    passwordtxt = false;
                  });
                },
                text: "Description",
                // color: ColorConstraints.red,
                width: 0.3,
                height: 0.05,
                color: Descriptiontxt == true
                    ? ColorConstraints.blue1
                    : ColorConstraints.textgrey),
            SwitchBtn(
                onpressed: () {
                  setState(() {
                    personalTXt = false;
                    contacttxt = false;
                    socialNetworktxt = false;
                    Descriptiontxt = false;
                    passwordtxt = true;
                  });
                },
                text: "Password",
                // color: ColorConstraints.red,
                width: 0.3,
                height: 0.05,
                color: passwordtxt == true
                    ? ColorConstraints.blue1
                    : ColorConstraints.textgrey)
          ],
        ),
      );
  Widget profileRow() => Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          SizedBox(
            width: 15,
          ),
          imageCircle(),
          SizedBox(
            width: 10,
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                width: MediaQuery.of(context).size.width * 0.7,
                // color: ColorConstraints.red,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    BlueTxet(
                      text: 'Omar',
                      fontSize: 13,
                      fontweight: FontWeight.bold,
                    ),
                    ButtonWithoutHw(
                      onpressed: () {},
                      text: TranslateKeys.mywallettxt,
                      color: ColorConstraints.blue2,
                      width: 0.27,
                      height: 0.04,
                    )
                  ],
                ),
              ),
              SizedBox(
                height: 3,
              ),
              Row(
                children: [
                  Text("Signals :",
                      style: TextStyle(
                          fontSize: 11,
                          fontWeight: FontWeight.w500,
                          color: ColorConstraints.black)),
                  Text("0",
                      style: TextStyle(
                          fontSize: 10,
                          // fontWeight: FontWeight.w600,
                          color: ColorConstraints.grey1))
                ],
              ),
              SizedBox(
                height: 5,
              ),
              Row(
                children: [
                  FlagContainer(),
                  Text(" USA",
                      style: TextStyle(
                          fontSize: 10,
                          // fontWeight: FontWeight.w600,
                          color: ColorConstraints.grey1)),
                ],
              ),
              Row(
                children: [
                  // LogoContainer(imagename: 'assets/sykpe.png'),
                  LogoContainer(imagename: 'assets/telegram.jpg'),
                  LogoContainer(imagename: 'assets/whatsapp.jpg'),
                  LogoContainer(imagename: 'assets/telegram.jpg'),
                  LogoContainer(imagename: 'assets/whatsapp.jpg'),
                  LogoContainer(imagename: 'assets/telegram.jpg'),
                  LogoContainer(imagename: 'assets/whatsapp.jpg')
                ],
              )
            ],
          )
        ],
      );
  Widget imageCircle() => Container(
        height: 50,
        width: 50,
        decoration: BoxDecoration(
            shape: BoxShape.circle,
            boxShadow: [
              BoxShadow(
                color: ColorConstraints.grey3,
                spreadRadius: 0,
                blurRadius: 2,
                offset: Offset(0.0, 1.0),
              )
            ],
            image:
                DecorationImage(image: AssetImage('assets/Rectangle 194.png')),
            border: Border.all(color: Colors.white, width: 2)),
      );
}
