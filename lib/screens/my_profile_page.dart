import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:get/get_navigation/src/routes/default_transitions.dart';
import 'package:vertax_fx/colorconstraint/color_constraint.dart';
import 'package:vertax_fx/common/appbar_title_text.dart';
import 'package:vertax_fx/common/black_text.dart';
import 'package:vertax_fx/common/blue_text.dart';
import 'package:vertax_fx/common/button.dart';
import 'package:vertax_fx/common/button_without_h.dart';
import 'package:vertax_fx/common/flag_container.dart';
import 'package:vertax_fx/common/grey_text.dart';
import 'package:vertax_fx/common/yellow_text.dart';
import 'package:vertax_fx/screens/edit_page.dart';
import 'package:vertax_fx/translatekeys/translate_keys.dart';

class MyProfilePage extends StatefulWidget {
  const MyProfilePage({super.key});

  @override
  State<MyProfilePage> createState() => _MyProfilePageState();
}

class _MyProfilePageState extends State<MyProfilePage> {
  bool showMyFriend = true;
  bool showMessage = false;
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: ColorConstraints.white,
        appBar: AppBar(
          centerTitle: true,
          title: AppBarTitleText(
            text: TranslateKeys.myProfiletxt,
          ),
          actions: [
            Padding(
              padding: const EdgeInsets.only(right: 20),
              child: Center(
                child: GestureDetector(
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => EditPage()),
                    );
                  },
                  child: YellowText(
                    text: "Edit",
                  ),
                ),
              ),
            )
          ],
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
          padding: const EdgeInsets.all(10),
          child: Column(
            children: [
              profileRow(),
              Divider(
                indent: 10,
                endIndent: 10,
              ),
              SizedBox(
                height: 10,
              ),
              iconsContainer(),
              SizedBox(
                height: 10,
              ),
              con()
            ],
          ),
        ),
      ),
    );
  }

  Widget iconsContainer() => Padding(
        padding: const EdgeInsets.only(left: 10, right: 10),
        child: Container(
          height: 40,
          width: MediaQuery.of(context).size.width,
          decoration: BoxDecoration(
              color: ColorConstraints.white,
              borderRadius: BorderRadius.circular(10),
              border: Border.all(
                color: ColorConstraints.grey0,
              )),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              myFriendsiconText(),
              SizedBox(
                width: 20,
              ),
              Container(
                height: 40,
                width: 2,
                color: ColorConstraints.grey0,
              ),
              SizedBox(
                width: 20,
              ),
              MessagesiconText()
            ],
          ),
        ),
      );
  Widget myFriendsiconText() => GestureDetector(
        onTap: () {
          setState(() {
            showMyFriend = true;
            showMessage = false;
          });
          print(" my friend");
        },
        child: Row(
          children: [
            Icon(
              Icons.person_outlined,
              color: ColorConstraints.yellow,
            ),
            SizedBox(
              width: 2,
            ),
            Text("My Friends (300)",
                style: TextStyle(
                    color: showMyFriend == true
                        ? ColorConstraints.blue1
                        : ColorConstraints.grey2,
                    fontSize: 13,
                    fontWeight: FontWeight.bold))
            // BlueTxet(
            //   text: "My Friends (300)",
            //   fontSize: 13,
            //   fontweight: FontWeight.bold,
            // )
          ],
        ),
      );
  Widget MessagesiconText() => GestureDetector(
        onTap: () {
          setState(() {
            showMyFriend = false;
            showMessage = true;
          });
          print("message");
        },
        child: Row(
          children: [
            Icon(
              Icons.message,
              color: ColorConstraints.yellow,
            ),
            SizedBox(
              width: 2,
            ),

            Text('Messages (5)',
                style: TextStyle(
                    color: showMessage == true
                        ? ColorConstraints.blue1
                        : ColorConstraints.grey2,
                    fontSize: 13,
                    fontWeight: FontWeight.bold)),
            // BlueTxet(
            //   text: "Messages (5)",
            //   fontSize: 13,
            //   fontweight: FontWeight.bold,
            // )
          ],
        ),
      );
  Widget con() {
    if (showMyFriend == true) {
      return myFriendContainer();
    } else if (showMessage == true) {
      return messageCon();
    }
    return Container();
  }

  Widget messageCon() => Container(
        width: MediaQuery.of(context).size.width,
        height: MediaQuery.of(context).size.height * 0.5,
        child: Center(child: GreyText(text: 'No Messages')),
      );

  Widget myFriendContainer() => Padding(
        padding: const EdgeInsets.only(left: 10, right: 10, top: 10),
        child: Container(
          width: MediaQuery.of(context).size.width,
          height: MediaQuery.of(context).size.height * 0.5,
          // color: ColorConstraints.red,
          child: Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  BlueTxet(text: 'Friends', fontSize: 13),
                  BlueTxet(text: 'Friend Requests (30)', fontSize: 13)
                ],
              ),
              SizedBox(
                height: 10,
              ),
              Row(
                children: [
                  imageCircle(),
                  SizedBox(
                    width: 15,
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      BlueTxet(
                        text: 'Jonah',
                        fontSize: 15,
                        fontweight: FontWeight.bold,
                      ),
                      SizedBox(
                        height: 5,
                      ),
                      Row(
                        children: [
                          FlagContainer(),
                          SizedBox(
                            width: 5,
                          ),
                          Text(" USA",
                              style: TextStyle(
                                  fontSize: 10,
                                  // fontWeight: FontWeight.w600,
                                  color: ColorConstraints.grey2)),
                        ],
                      ),
                    ],
                  ),
                  Spacer(),
                  TextButton(
                      onPressed: () {},
                      child: Text(
                        "Confrim",
                        style: TextStyle(
                            color: ColorConstraints.blue2, fontSize: 13),
                      )),
                  ButtonWithoutHw(
                    onpressed: () {},
                    text: 'Delete',
                    color: ColorConstraints.red,
                    width: 0.17,
                    height: 0.03,
                  )
                ],
              ),
              Divider(),
              SizedBox(
                height: 10,
              ),
              Row(
                children: [
                  imageCircle(),
                  SizedBox(
                    width: 15,
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      BlueTxet(
                        text: 'Jonah',
                        fontSize: 15,
                        fontweight: FontWeight.bold,
                      ),
                      SizedBox(
                        height: 5,
                      ),
                      Row(
                        children: [
                          FlagContainer(),
                          SizedBox(
                            width: 5,
                          ),
                          Text(" USA",
                              style: TextStyle(
                                  fontSize: 10,
                                  // fontWeight: FontWeight.w600,
                                  color: ColorConstraints.grey2)),
                        ],
                      ),
                    ],
                  ),
                  Spacer(),
                  ButtonWithoutHw(
                    onpressed: () {},
                    text: 'Friends',
                    color: ColorConstraints.blue1,
                    width: 0.19,
                    height: 0.03,
                  )
                ],
              ),
            ],
          ),
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
