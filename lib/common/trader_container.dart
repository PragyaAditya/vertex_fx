import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:vertax_fx/colorconstraint/color_constraint.dart';
import 'package:vertax_fx/common/black_text.dart';
import 'package:vertax_fx/common/button.dart';
import 'package:vertax_fx/common/flag_container.dart';
import 'package:vertax_fx/common/grey_text.dart';
import 'package:vertax_fx/common/text_column.dart';
import 'package:vertax_fx/screens/trader_details_page.dart';
import 'package:vertax_fx/translatekeys/translate_keys.dart';

class TraderContainer extends StatefulWidget {
  const TraderContainer({super.key});

  @override
  State<TraderContainer> createState() => _TraderContainerState();
}

class _TraderContainerState extends State<TraderContainer> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(10),
      child: GestureDetector(
        onTap: () {
          Navigator.push(
            context,
            MaterialPageRoute(builder: (context) => TraderDetailPage()),
          );
        },
        child: Container(
            padding: EdgeInsets.zero,
            height: MediaQuery.of(context).size.height * 0.23,
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
              padding: const EdgeInsets.all(17),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Row(
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
                  ),
                  Divider(thickness: 1),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Textcolumn(number: "18", text: "Subscribers"),
                      Textcolumn(number: "5900", text: "Trades"),
                      Textcolumn(number: "Real", text: "Type"),
                      Button(
                          onpressed: () {},
                          text: "Subscribers",
                          color: ColorConstraints.blue2,
                          width: 0.3)
                    ],
                  )
                ],
              ),
            )),
      ),
    );
  }

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
              FlagContainer(),
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
        ],
      );
  // Widget imageCircle() => Container(
  //       padding: EdgeInsets.zero,
  //       height: 50,
  //       width: 100,
  //       decoration: BoxDecoration(
  //           border: Border.all(color: ColorConstraints.white),
  //           shape: BoxShape.circle,
  //           color: ColorConstraints.pink1),
  //     );
}
