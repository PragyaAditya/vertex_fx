import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_connect/http/src/utils/utils.dart';
import 'package:vertax_fx/colorconstraint/color_constraint.dart';
import 'package:vertax_fx/common/appbar_title_text.dart';
import 'package:vertax_fx/common/black_text.dart';
import 'package:vertax_fx/common/button.dart';
import 'package:vertax_fx/common/colon_text.dart';
import 'package:vertax_fx/common/grey_text.dart';
import 'package:vertax_fx/common/trader_container.dart';
import 'package:vertax_fx/common/trader_profile_row.dart';
import 'package:vertax_fx/model/trader_detail_page.dart';
import 'package:vertax_fx/screens/symbol_provider_subscriber.dart';
import 'package:vertax_fx/screens/trading_mode_table.dart';
import 'package:vertax_fx/translatekeys/translate_keys.dart';

class TraderDetailPage extends StatefulWidget {
  TraderDetailPage({super.key});

  @override
  State<TraderDetailPage> createState() => _TraderDetailPageState();
}

class _TraderDetailPageState extends State<TraderDetailPage> {
  String name = "";
  bool showAccount = false;
  bool showtrandingHistory = false;
  bool showStatics = false;
  bool showdistution = false;
  bool showDescription = false;
  bool showreview = false;

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
      body: Padding(
        padding: const EdgeInsets.all(10.0),
        child: SingleChildScrollView(
          child: Column(
            children: [
              traderCard(),
              SizedBox(
                height: MediaQuery.of(context).size.height * 0.04,
              ),
              SubscribersBtn()
            ],
          ),
        ),
      ),
    ));
  }

  Widget SubscribersBtn() => Button(
      onpressed: () {
        Navigator.push(
          context,
          MaterialPageRoute(builder: (context) => SymbolProviderSubscripber()),
        );
      },
      text: TranslateKeys.Subscribers,
      color: ColorConstraints.blue2,
      width: 0.83);

  Widget traderCard() => Container(
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
        child: SingleChildScrollView(
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
                  iconRow()
                ],
              ),
              SizedBox(
                height: MediaQuery.of(context).size.height * 0.01,
              ),
              Divider(
                thickness: 1,
              ),
              SizedBox(
                height: MediaQuery.of(context).size.height * 0.01,
              ),
              Row(
                children: [
                  txtcol(),
                  coltxt(),
                  SizedBox(
                    width: 10,
                  ),
                  answerTxt()
                ],
              ),
              SizedBox(
                height: MediaQuery.of(context).size.height * 0.01,
              ),
              Divider(
                thickness: 1,
              ),
              scrollRow(),
              here()
            ],
          ),
        ),
      );

  Widget here() {
    if (showAccount == true) {
      return Container(
        height: 100,
        width: double.infinity,
        decoration: BoxDecoration(color: ColorConstraints.black),
      );
    } else if (showtrandingHistory == true) {
      return TradingModeTable();
    } else if (showStatics == true) {
      return staticsContainer();
    } else if (showdistution == true) {
      return Container(
        height: 100,
        width: double.infinity,
        child: Center(child: GreyText(text: "No Details Available")),
      );
    } else if (showDescription == true) {
      return Container(
        height: 100,
        width: double.infinity,
        child: Center(child: GreyText(text: "Signal")),
      );
    } else if (showreview == true) {
      return Container(
        height: 100,
        width: double.infinity,
        child: Center(child: GreyText(text: "No Review Available")),
      );
    }
    return Container();
  }

  Widget staticsContainer() => Row(
        children: [
          Statisticsfristcol(),
          SizedBox(
            width: MediaQuery.of(context).size.width * 0.02,
          ),
          staticticscoltxt(),
          SizedBox(
            width: MediaQuery.of(context).size.width * 0.04,
          ),
          statisticsAnswerTxt()
        ],
      );
  Widget Statisticsfristcol() => Container(
        // height: MediaQuery.of(context).size.height * 0.26,
        // width: MediaQuery.of(context).size.width * 0.33,
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              BlackText(text: TranslateKeys.Trades),
              BlackText(text: TranslateKeys.profitTrades),
              BlackText(text: TranslateKeys.lossTrades),
              BlackText(text: TranslateKeys.SharpeRatio),
              BlackText(text: TranslateKeys.longTrades),
              BlackText(text: TranslateKeys.shortTrades),
              BlackText(text: TranslateKeys.bestTrades),
              BlackText(text: TranslateKeys.worstTrades),
              BlackText(text: TranslateKeys.grossLoss),
              BlackText(text: TranslateKeys.grossTrades),
              BlackText(text: TranslateKeys.maxConsecutiveWins),
              BlackText(text: TranslateKeys.maxConsecutiveLess),
              BlackText(text: TranslateKeys.maxConsecutiveProfit),
              BlackText(text: TranslateKeys.maxConsecutiveLoss),
            ],
          ),
        ),
      );
  Widget staticticscoltxt() => Container(
        // color: Colors.black,
        height: MediaQuery.of(context).size.height * 0.32,
        width: MediaQuery.of(context).size.width * 0.02,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            ColonText(),
            ColonText(),
            ColonText(),
            ColonText(),
            ColonText(),
            ColonText(),
            ColonText(),
            ColonText(),
            ColonText(),
            ColonText(),
            ColonText(),
            ColonText(),
            ColonText(),
          ],
        ),
      );
  Widget statisticsAnswerTxt() => Container(
        height: MediaQuery.of(context).size.height * 0.32,
        // width: MediaQuery.of(context).size.width * 0.4,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            GreyText(text: "1"),
            GreyText(text: '1'),
            GreyText(text: '0'),
            GreyText(text: '0.00'),
            GreyText(text: '0.0 '),
            GreyText(text: '0'),
            GreyText(text: '0'),
            GreyText(text: '0'),
            GreyText(text: '0'),
            GreyText(text: '0.00'),
            GreyText(text: '0.0 '),
            GreyText(text: '0'),
            GreyText(text: 'Can’t Find properly'),
            GreyText(text: '0%')
          ],
        ),
      );
  void scrollRowM(String name) {
    switch (name) {
      case 'account':
        setState(() {
          showreview = false;
          showDescription = false;
          showdistution = false;
          showStatics = false;
          showtrandingHistory = false;
          showAccount = true;
        });
        print("$name print ho bhai");
        break;
      case 'trandingHistory':
        setState(() {
          showreview = false;
          showDescription = false;
          showdistution = false;
          showStatics = false;
          showtrandingHistory = true;
          showAccount = false;
        });
        print("$name print ho bhai");
        break;
      case 'Statistics':
        setState(() {
          showreview = false;
          showDescription = false;
          showdistution = false;
          showStatics = true;
          showtrandingHistory = false;
          showAccount = false;
        });
        print("$name print ho bhai");
        break;
      case 'Distribution':
        setState(() {
          showreview = false;
          showDescription = false;
          showdistution = true;
          showStatics = false;
          showtrandingHistory = false;
          showAccount = false;
        });
        print("$name print ho bhai");
        break;
      case 'Description':
        setState(() {
          showreview = false;
          showDescription = true;
          showdistution = false;
          showStatics = false;
          showtrandingHistory = false;
          showAccount = false;
        });
        print("$name print ho bhai");
        break;
      case 'review':
        setState(() {
          showreview = true;
          showDescription = false;
          showdistution = false;
          showStatics = false;
          showtrandingHistory = false;
          showAccount = false;
        });
        print("$name print ho bhai");
        break;
      default:
        setState(() {
          name = "";
        });
    }
  }

  Widget scrollRow() => Container(
        height: MediaQuery.of(context).size.height * 0.06,
        width: double.infinity,
        child: SingleChildScrollView(
          scrollDirection: Axis.horizontal,
          child: Row(
            children: [
              TextButton(
                  onPressed: () {
                    setState(() {
                      name = "account";
                    });
                    scrollRowM(name);
                    // print("$name is here is her");
                  },
                  child: Text(
                    TranslateKeys.accounttxt,
                    style: TextStyle(
                        fontWeight: FontWeight.bold,
                        color: name == "account"
                            ? Colors.black
                            : ColorConstraints.textgrey),
                  )),
              TextButton(
                  onPressed: () {
                    setState(() {
                      name = "trandingHistory";
                    });
                    scrollRowM(name);
                    // print("$name is here is her");
                  },
                  child: Text(
                    TranslateKeys.tradingMode,
                    style: TextStyle(
                        fontWeight: FontWeight.bold,
                        color: name == "trandingHistory"
                            ? Colors.black
                            : ColorConstraints.textgrey),
                  )),
              TextButton(
                  onPressed: () {
                    setState(() {
                      name = "Statistics";
                    });
                    scrollRowM(name);
                  },
                  child: Text(
                    TranslateKeys.statisticstxt,
                    style: TextStyle(
                        fontWeight: FontWeight.bold,
                        color: name == "Statistics"
                            ? Colors.black
                            : ColorConstraints.textgrey),
                  )),
              TextButton(
                  onPressed: () {
                    setState(() {
                      name = "Distribution";
                    });
                    scrollRowM(name);
                  },
                  child: Text(TranslateKeys.distributiontxt,
                      style: TextStyle(
                          fontWeight: FontWeight.bold,
                          color: name == "Distribution"
                              ? Colors.black
                              : ColorConstraints.textgrey))),
              TextButton(
                  onPressed: () {
                    setState(() {
                      name = "Description";
                    });
                    scrollRowM(name);
                  },
                  child: Text(TranslateKeys.descriptiontxt,
                      style: TextStyle(
                          fontWeight: FontWeight.bold,
                          color: name == "Description"
                              ? Colors.black
                              : ColorConstraints.textgrey))),
              TextButton(
                  onPressed: () {
                    setState(() {
                      name = "review";
                    });
                    scrollRowM(name);
                  },
                  child: Text(TranslateKeys.reviewtxt,
                      style: TextStyle(
                          fontWeight: FontWeight.bold,
                          color: name == "review"
                              ? Colors.black
                              : ColorConstraints.textgrey))),
            ],
          ),
        ),
      );
  Widget answerTxt() => Container(
        height: MediaQuery.of(context).size.height * 0.26,
        width: MediaQuery.of(context).size.width * 0.4,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            GreyText(text: "18"),
            GreyText(text: '0'),
            GreyText(text: '1.00'),
            GreyText(text: 'Less 1 Hour'),
            GreyText(text: '0.00%'),
            GreyText(text: '0'),
            GreyText(text: '05/12/2021 12:01:35PM'),
            GreyText(text: 'Real')
          ],
        ),
      );
  Widget txtcol() => Container(
        height: MediaQuery.of(context).size.height * 0.26,
        width: MediaQuery.of(context).size.width * 0.33,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            BlackText(text: TranslateKeys.netProfit),
            BlackText(text: TranslateKeys.Subscribers),
            BlackText(text: TranslateKeys.tradesPerWeek),
            BlackText(text: TranslateKeys.avgHoldingTime),
            BlackText(text: TranslateKeys.maxDrawdown),
            BlackText(text: TranslateKeys.weeks),
            BlackText(text: TranslateKeys.latestTrade),
            BlackText(text: TranslateKeys.tradingMode),
          ],
        ),
      );

  Widget coltxt() => Container(
        height: MediaQuery.of(context).size.height * 0.26,
        width: MediaQuery.of(context).size.width * 0.02,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            ColonText(),
            ColonText(),
            ColonText(),
            ColonText(),
            ColonText(),
            ColonText(),
            ColonText(),
            ColonText(),
          ],
        ),
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
