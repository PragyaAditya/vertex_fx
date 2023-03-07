import 'dart:io';

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
import 'package:vertax_fx/common/copy_percent_container.dart';
import 'package:vertax_fx/common/copy_type.dart';
import 'package:vertax_fx/common/error_text.dart';
import 'package:vertax_fx/common/flag_container.dart';
import 'package:vertax_fx/common/grey_text.dart';
import 'package:vertax_fx/common/stop_trade_container.dart';
import 'package:vertax_fx/translatekeys/translate_keys.dart';

class TradeScreen extends StatefulWidget {
  const TradeScreen({super.key});

  @override
  State<TradeScreen> createState() => _TradeScreenState();
}

class _TradeScreenState extends State<TradeScreen> {
  bool isChecked = false;
  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
            backgroundColor: ColorConstraints.white,
            appBar: AppBar(
              centerTitle: true,
              elevation: 0,
              title: AppBarTitleText(
                text: TranslateKeys.iCProvider,
              ),
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
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  accountID(),
                  icproviderCon(),
                  SizedBox(
                    height: 20,
                  ),
                  finishText()
                ],
              ),
            )));
  }

  Widget icproviderCon() => Padding(
        padding: const EdgeInsets.only(left: 10, right: 10),
        child: Container(
          height: MediaQuery.of(context).size.height * 0.76,
          width: MediaQuery.of(context).size.width,
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
          child: Padding(
            padding: const EdgeInsets.only(left: 10, right: 10),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                firstRow(),
                Divider(
                  thickness: 1,
                  color: ColorConstraints.borderGrey,
                  endIndent: 0,
                  indent: 0,
                ),
                secondRow(),
                Divider(
                  thickness: 1,
                  color: ColorConstraints.borderGrey,
                  endIndent: 0,
                  indent: 0,
                ),
                thirdRow(),
                Divider(
                  thickness: 1,
                  color: ColorConstraints.borderGrey,
                  endIndent: 0,
                  indent: 0,
                ),
                fourthRow(),
                Divider(
                  thickness: 1,
                  color: ColorConstraints.borderGrey,
                  endIndent: 0,
                  indent: 0,
                ),
                waitCheckBox(),
                SizedBox(
                  height: 10,
                ),
                atMarketRow(),
                SizedBox(
                  height: 10,
                ),
                timertxt(),
                SizedBox(
                  height: 10,
                ),
                convertToLimitRow(),
                SizedBox(
                  height: 10,
                ),
                enableTxt(),
                SizedBox(
                  height: 10,
                ),
                minAndMAxlotCon()
              ],
            ),
          ),
        ),
      );
  Widget timertxt() => Text(
        "Timer (Seconds)",
        style: TextStyle(color: ColorConstraints.blue, fontSize: 14),
      );
  Widget atMarketRow() => Row(
        children: [
          Container(
            height: 40,
            width: 140,
            decoration: BoxDecoration(
                border: Border.all(color: ColorConstraints.borderGrey),
                borderRadius: BorderRadius.circular(5)),
            child: Padding(
              padding: const EdgeInsets.only(left: 10, right: 10),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  GestureDetector(onTap: () {}, child: BlackText(text: '-')),
                  GestureDetector(onTap: () {}, child: BlackText(text: '+'))
                ],
              ),
            ),
          ),
          SizedBox(
            width: 20,
          ),
          Row(
            children: [
              SizedBox(
                height: 20,
                width: 20,
                child: Checkbox(
                    checkColor: ColorConstraints.blue2,
                    fillColor: MaterialStateProperty.all(
                      Color.fromRGBO(210, 219, 228, 1),
                    ),
                    value: isChecked,
                    onChanged: (Value) {
                      setState(() {
                        isChecked = !isChecked;
                      });
                    }),
              ),
              SizedBox(
                width: 5,
              ),
              Text(
                'At Market',
                style:
                    TextStyle(color: ColorConstraints.textgrey, fontSize: 14),
              )
            ],
          )
        ],
      );
  Widget minAndMAxlotCon() => Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Container(
            height: 40,
            width: 140,
            decoration: BoxDecoration(
                border: Border.all(color: ColorConstraints.borderGrey),
                borderRadius: BorderRadius.circular(5)),
            child: Padding(
                padding: const EdgeInsets.only(left: 10, right: 10),
                child: TextField(
                  decoration: InputDecoration(
                      border: InputBorder.none,
                      hintText: "Min Lot",
                      hintStyle: TextStyle(fontSize: 12)),
                )),
          ),
          Container(
            height: 40,
            width: 140,
            decoration: BoxDecoration(
                border: Border.all(color: ColorConstraints.borderGrey),
                borderRadius: BorderRadius.circular(5)),
            child: Center(
              child: Padding(
                  padding: const EdgeInsets.only(left: 10, right: 10),
                  child: TextField(
                    decoration: InputDecoration(
                        border: InputBorder.none,
                        hintText: "Max Lot",
                        hintStyle: TextStyle(fontSize: 12)),
                  )),
            ),
          ),
        ],
      );
  Widget convertToLimitRow() => Row(
        children: [
          Container(
            height: 40,
            width: 140,
            decoration: BoxDecoration(
                border: Border.all(color: ColorConstraints.borderGrey),
                borderRadius: BorderRadius.circular(5)),
            child: Padding(
              padding: const EdgeInsets.only(left: 10, right: 10),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  GestureDetector(onTap: () {}, child: BlackText(text: '-')),
                  GestureDetector(onTap: () {}, child: BlackText(text: '+'))
                ],
              ),
            ),
          ),
          SizedBox(
            width: 20,
          ),
          Row(
            children: [
              SizedBox(
                height: 20,
                width: 20,
                child: Checkbox(
                    checkColor: ColorConstraints.blue2,
                    fillColor: MaterialStateProperty.all(
                      Color.fromRGBO(210, 219, 228, 1),
                    ),
                    value: isChecked,
                    onChanged: (Value) {
                      setState(() {
                        isChecked = !isChecked;
                      });
                    }),
              ),
              SizedBox(
                width: 5,
              ),
              Text(
                'Convert to Limits',
                style:
                    TextStyle(color: ColorConstraints.textgrey, fontSize: 14),
              )
            ],
          )
        ],
      );
  Widget enableTxt() => Row(
        children: [
          SizedBox(
            height: 20,
            width: 20,
            child: Checkbox(
                checkColor: ColorConstraints.blue2,
                fillColor: MaterialStateProperty.all(
                  Color.fromRGBO(210, 219, 228, 1),
                ),
                value: isChecked,
                onChanged: (Value) {
                  setState(() {
                    isChecked = !isChecked;
                  });
                }),
          ),
          SizedBox(
            width: 5,
          ),
          Text(
            'Convert to Limits',
            style: TextStyle(color: ColorConstraints.textgrey, fontSize: 14),
          )
        ],
      );
  Widget fourthRow() => CopyType();
  Widget thirdRow() => Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [CopyContainer(), SlippperContainer()],
      );
  Widget firstRow() => Container(
        padding: EdgeInsets.all(10),
        // height: 50,
        width: double.infinity,
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            imageCircle(),
            SizedBox(
              width: MediaQuery.of(context).size.width * 0.04,
            ),
            nameCol(),
            Spacer(),
            iconRow(),
            SizedBox(
              width: MediaQuery.of(context).size.width * 0.04,
            ),
          ],
        ),
      );
  Widget iconRow() => Column(
        crossAxisAlignment: CrossAxisAlignment.end,
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          Container(
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
        ],
      );
  Widget waitCheckBox() => Row(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          SizedBox(
            height: 20,
            width: 20,
            child: Checkbox(
                checkColor: ColorConstraints.blue2,
                fillColor: MaterialStateProperty.all(
                  Color.fromRGBO(210, 219, 228, 1),
                ),
                value: isChecked,
                onChanged: (Value) {
                  setState(() {
                    isChecked = !isChecked;
                  });
                }),
          ),
          SizedBox(
            width: 5,
          ),
          Text(
            'Wait Original Price',
            style: TextStyle(color: ColorConstraints.textgrey, fontSize: 14),
          )
        ],
      );
  Widget secondRow() => Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [StopTradeCon(), Spacer(), StopTradeCon()],
          ),
          SizedBox(
            height: 10,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(
                height: 20,
                width: 20,
                child: Checkbox(
                    checkColor: ColorConstraints.blue2,
                    fillColor: MaterialStateProperty.all(
                      Color.fromRGBO(210, 219, 228, 1),
                    ),
                    value: isChecked,
                    onChanged: (Value) {
                      setState(() {
                        isChecked = !isChecked;
                      });
                    }),
              ),
              SizedBox(
                width: 5,
              ),
              Text(
                'Copy Opposite',
                style:
                    TextStyle(color: ColorConstraints.textgrey, fontSize: 14),
              )
            ],
          )
        ],
      );
  Widget imageCircle() => Container(
        height: 43,
        width: 43,
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
              FlagContainer(),
              SizedBox(
                width: 5,
              ),
              GreyText(text: "USA")
            ],
          ),
        ],
      );
  Widget finishText() => Padding(
        padding: const EdgeInsets.only(left: 10, right: 10),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            ArrowBackText(
              onpressed: (() {}),
            ),
            Button(
                onpressed: () {},
                text: "Finish",
                color: ColorConstraints.blue,
                width: 0.5),
            ArrowForwordText(
              onpressed: () {},
            )
          ],
        ),
      );
  Widget accountID() => Row(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          ColorText(
              text: TranslateKeys.accountIdtxt,
              color: Colors.black,
              fontsize: 10),
          ColorText(
              text: ': 123457030',
              color: ColorConstraints.textgrey,
              fontsize: 10)
        ],
      );
}
