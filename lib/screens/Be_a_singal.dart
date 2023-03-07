import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:vertax_fx/colorconstraint/color_constraint.dart';
import 'package:vertax_fx/common/appbar_title_text.dart';
import 'package:vertax_fx/common/arrow_back_text.dart';
import 'package:vertax_fx/common/arrow_forword_text.dart';
import 'package:vertax_fx/common/blue_text.dart';
import 'package:vertax_fx/common/button.dart';
import 'package:vertax_fx/common/description_container.dart';
import 'package:vertax_fx/common/information_container.dart';
import 'package:vertax_fx/common/offered_container.dart';
import 'package:vertax_fx/common/trade_screen.dart';
import 'package:vertax_fx/translatekeys/translate_keys.dart';

class BeASignalPage extends StatefulWidget {
  const BeASignalPage({super.key});

  @override
  State<BeASignalPage> createState() => _BeASignalPageState();
}

class _BeASignalPageState extends State<BeASignalPage> {
  int counter = 0;
  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
      appBar: AppBar(
        centerTitle: true,
        elevation: 0,
        title: AppBarTitleText(
          text: "Create Signal",
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
      body: Padding(
        padding: const EdgeInsets.all(10.0),
        child: SingleChildScrollView(
          child: Column(
            // mainAxisSize: MainAxisSize.max,
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Column(
                children: [
                  firstRow(),
                  contentContainer(),
                ],
              ),
              finishText()
            ],
          ),
        ),
      ),
    ));
  }

  Widget contentContainer() {
    if (counter == 0) {
      return InformationContainer();
    } else if (counter == 1) {
      return descriptionRow();
    } else if (counter == 2) {
      return OfferedContainer();
    }
    return Container();
  }

  Widget descriptionRow() => Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          SizedBox(
            height: MediaQuery.of(context).size.height * 0.02,
          ),
          BlueTxet(text: TranslateKeys.descriptiontxt, fontSize: 10),
          SizedBox(
            height: MediaQuery.of(context).size.height * 0.01,
          ),
          Container(
            width: double.infinity,
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                border: Border.all(color: ColorConstraints.grey0)),
            child: Padding(
              padding: const EdgeInsets.only(left: 10, bottom: 10, right: 5),
              child: TextFormField(
                style: TextStyle(color: ColorConstraints.textgrey),
                minLines: 10,
                maxLines: 12,
                maxLength: 150,
                decoration: InputDecoration(
                  contentPadding: EdgeInsets.all(10),
                  border: InputBorder.none,
                  hintText: "Enter your Description",
                ),
              ),
            ),
          ),
          SizedBox(
            height: MediaQuery.of(context).size.height * 0.37,
          ),
        ],
      );
  Widget firstRow() => Row(
        children: [
          Text(
            'Information',
            style: TextStyle(
                color: ColorConstraints.blue, fontWeight: FontWeight.w700),
          ),
          SizedBox(
            width: 4,
          ),
          Text(
            TranslateKeys.descriptionTXt,
            style: TextStyle(
                color: counter >= 1
                    ? ColorConstraints.blue
                    : ColorConstraints.textgrey,
                fontWeight: FontWeight.bold),
          ),
          SizedBox(
            width: 4,
          ),
          Text(
            TranslateKeys.offeredInstrumentsTXt,
            style: TextStyle(
                color: counter == 2
                    ? ColorConstraints.blue
                    : ColorConstraints.textgrey,
                fontWeight: FontWeight.bold),
          ),
        ],
      );
  Widget finishText() => Padding(
        padding: const EdgeInsets.only(left: 10, right: 10),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            ArrowBackText(
              onpressed: (() {
                if (counter == 1 || counter == 2) {
                  setState(() {
                    counter--;
                  });
                }

                print("pre");
                print(counter);
              }),
            ),
            Button(
                onpressed: () {
                  if (counter == 2) {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => TradeScreen()),
                    );
                  }
                },
                text: "Finish",
                color: ColorConstraints.blue,
                width: 0.5),
            counter == 2
                ? Container()
                : ArrowForwordText(
                    onpressed: () {
                      setState(() {
                        if (counter >= 0) {
                          counter++;
                        }
                      });
                      print("next");
                      print(counter);
                    },
                  )
          ],
        ),
      );
}
