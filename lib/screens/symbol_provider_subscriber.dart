import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:vertax_fx/colorconstraint/color_constraint.dart';
import 'package:vertax_fx/common/appbar_title_text.dart';
import 'package:vertax_fx/common/arrow_back_text.dart';
import 'package:vertax_fx/common/arrow_forword_text.dart';
import 'package:vertax_fx/common/black_text.dart';
import 'package:vertax_fx/common/button.dart';
import 'package:vertax_fx/common/grey_text.dart';
import 'package:vertax_fx/common/switchBtn.dart';
import 'package:vertax_fx/translatekeys/translate_keys.dart';

class SymbolProviderSubscripber extends StatefulWidget {
  const SymbolProviderSubscripber({super.key});

  @override
  State<SymbolProviderSubscripber> createState() =>
      _SymbolProviderSubscripberState();
}

class _SymbolProviderSubscripberState extends State<SymbolProviderSubscripber> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
            appBar: AppBar(
              centerTitle: true,
              title: AppBarTitleText(
                text: TranslateKeys.iCProvider,
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
            body: Column(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [ContainerCard(), finishText()],
            )));
  }

  Widget ContainerCard() => Padding(
        padding: const EdgeInsets.all(10),
        child: Container(
          padding: EdgeInsets.all(13),
          decoration: BoxDecoration(
              color: ColorConstraints.white,
              borderRadius: BorderRadius.circular(10),
              boxShadow: [
                BoxShadow(
                  color: ColorConstraints.grey3,
                  spreadRadius: 0,
                  blurRadius: 2,
                  offset: Offset(0.0, 1.0),
                )
              ],
              border: Border.all(color: ColorConstraints.grey0)),
          child: Column(
            children: [
              Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  imageCircle(),
                  SizedBox(
                    width: MediaQuery.of(context).size.width * 0.04,
                  ),
                  nameCol(),
                  Spacer(),
                  iconRow(),
                ],
              ),
              SizedBox(
                height: MediaQuery.of(context).size.height * 0.03,
              ),
              Divider(
                thickness: 1,
              ),
              SizedBox(
                height: MediaQuery.of(context).size.height * 0.01,
              ),
              providerSymboltxt(),
              SizedBox(
                height: MediaQuery.of(context).size.height * 0.02,
              ),
              switchBtn(),
              SizedBox(
                height: MediaQuery.of(context).size.height * 0.02,
              ),
              mapSymbol(),
              SizedBox(
                height: MediaQuery.of(context).size.height * 0.02,
              ),
              provideSubscriberSwitchBtn(),
              Container(
                height: MediaQuery.of(context).size.height * 0.18,
                width: double.infinity,
              )
            ],
          ),
        ),
      );
  Widget finishText() => Padding(
        padding: const EdgeInsets.only(left: 10, right: 10),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            ArrowBackText(onpressed: ( ){},),
            Button(
                onpressed: () {},
                text: "Finish",
                color: ColorConstraints.blue,
                width: 0.5),
            ArrowForwordText(onpressed: (){},)
          ],
        ),
      );
  Widget provideSubscriberSwitchBtn() => Row(
        children: [
          SwitchBtnwithoutC(
              onpressed: () {},
              text: "Provider Symbols",
              color: ColorConstraints.textgrey,
              width: 0.38,
              height: 0.06),
          SwitchBtn(
              onpressed: () {},
              text: " Subsciber Symbols",
              color: ColorConstraints.textgrey,
              width: 0.42,
              height: 0.06),
          SwitchBtnwithoutL(
              onpressed: () {},
              text: " ",
              color: ColorConstraints.white,
              width: 0.06,
              height: 0.06)
        ],
      );
  Widget mapSymbol() => Button(
      onpressed: () {},
      text: "Map Symbol",
      color: ColorConstraints.blue,
      width: 0.4);

  Widget switchBtn() => Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          SwitchBtnwithCurve(
              onpressed: () {},
              text: "Selected Any Symbol",
              color: ColorConstraints.textgrey,
              width: 0.4,
              height: 0.06),
          SwitchBtnwithCurve(
              onpressed: () {},
              text: "Selected Any Symbol",
              color: ColorConstraints.textgrey,
              width: 0.4,
              height: 0.06)
        ],
      );
  Widget providerSymboltxt() => Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(
            "Provider Symbols",
            style: TextStyle(
                fontSize: 12,
                color: ColorConstraints.blue,
                fontWeight: FontWeight.w600),
          ),
          Text(
            "Subscriber Symbols",
            style: TextStyle(
                fontSize: 12,
                color: ColorConstraints.blue,
                fontWeight: FontWeight.w600),
          ),
        ],
      );
  Widget iconRow() => Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Container(
            alignment: Alignment.topRight,
            margin: EdgeInsets.only(left: 30),
            height: 20,
            width: 60,
            decoration: BoxDecoration(color: ColorConstraints.green),
            child: Center(
              child: Text(
                "Free",
                style: TextStyle(
                  color: ColorConstraints.white,
                  fontSize: 10,
                ),
              ),
            ),
          ),
          SizedBox(
            height: MediaQuery.of(context).size.height * 0.03,
            width: MediaQuery.of(context).size.width * 0.03,
          ),
          Row(
            crossAxisAlignment: CrossAxisAlignment.end,
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              BlackText(text: TranslateKeys.growth),
              SizedBox(
                width: MediaQuery.of(context).size.width * 0.01,
              ),
              GreyText(text: "163.05%")
            ],
          )
        ],
      );
  Widget nameCol() => Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Text(
              "IC Provider",
              style: TextStyle(
                  fontSize: 15,
                  color: ColorConstraints.blue2,
                  fontWeight: FontWeight.bold),
            ),
            SizedBox(
              height: MediaQuery.of(context).size.height * 0.01,
            ),
            Row(
              children: [
                Container(
                  height: 20,
                  width: 20,
                  child: Image(image: AssetImage('assets/download.png')),
                ),
                SizedBox(
                  width: 5,
                ),
                GreyText(text: "USA")
              ],
            ),
            SizedBox(
              height: MediaQuery.of(context).size.height * 0.01,
            ),
            Row(
              children: [
                Icon(
                  Icons.star,
                  color: ColorConstraints.yellow,
                  size: 17,
                ),
                GreyText(text: "5.0")
              ],
            )
          ]);
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
