import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:vertax_fx/colorconstraint/color_constraint.dart';
import 'package:vertax_fx/common/black_text.dart';
import 'package:vertax_fx/common/grey_text.dart';
import 'package:vertax_fx/translatekeys/translate_keys.dart';

import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

class TraderProfile extends StatefulWidget {
  const TraderProfile({super.key});

  @override
  State<TraderProfile> createState() => _TraderProfileState();
}

class _TraderProfileState extends State<TraderProfile> {
  @override
  Widget build(BuildContext context) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      mainAxisAlignment: MainAxisAlignment.start,
      children: [
        imageCircle(),
        SizedBox(
          width: MediaQuery.of(context).size.width * 0.02,
        ),
        nameCol(),
        Spacer(),
        iconRow()
      ],
    );
  }

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
  Widget iconRow() => Column(
        crossAxisAlignment: CrossAxisAlignment.end,
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          Row(
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
              SizedBox(
                width: MediaQuery.of(context).size.width * 0.02,
              ),
              Icon(
                Icons.remove_red_eye,
                color: ColorConstraints.yellow1,
                size: 17,
              ),
              SizedBox(
                width: MediaQuery.of(context).size.width * 0.02,
              ),
              Icon(
                Icons.share,
                color: ColorConstraints.yellow1,
                size: 15,
              )
            ],
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
}
