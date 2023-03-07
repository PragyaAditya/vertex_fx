import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:get/get_connect/http/src/utils/utils.dart';
import 'package:vertax_fx/colorconstraint/color_constraint.dart';
import 'package:vertax_fx/common/delete_table.dart';
import 'package:vertax_fx/common/deleted_table.dart';
import 'package:vertax_fx/common/appbar_title_text.dart';
import 'package:vertax_fx/common/coupon_table.dart';
import 'package:vertax_fx/common/disable_table.dart';
import 'package:vertax_fx/common/grey_text.dart';
import 'package:vertax_fx/common/switchBtn.dart';
import 'package:vertax_fx/screens/active_table.dart';
import 'package:vertax_fx/translatekeys/translate_keys.dart';

class MysignalPage extends StatefulWidget {
  const MysignalPage({super.key});

  @override
  State<MysignalPage> createState() => _MysignalPageState();
}

class _MysignalPageState extends State<MysignalPage> {
  bool showDeleted = false;
  bool showCupons = false;
  bool showActive = false;
  bool showArchived = false;
  bool showDeleted1 = false;

  List<bool> isSelected = [true, false, false];
  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
      backgroundColor: ColorConstraints.white,
      appBar: AppBar(
        centerTitle: true,
        title: AppBarTitleText(
          text: TranslateKeys.mySignals,
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
        children: [
          subscriptiontxt(),
          SizedBox(
            height: MediaQuery.of(context).size.height * 0.03,
          ),
          switchBtn(),
          SizedBox(
            height: MediaQuery.of(context).size.height * 0.01,
          ),
          deletedSwitchBtn(),
          SizedBox(
            height: MediaQuery.of(context).size.height * 0.03,
          ),
          switchtable()
          // table(),
        ],
      ),
    ));
  }

  Widget switchtable() {
    if (showActive == true) {
      return table();
    } else if (showDeleted == true) {
      return Deletedtable();
    } else if (showCupons == true) {
      return couponTable();
    } else if (showArchived == true) {
      return DisableTable();
    } else if (showDeleted1 == true) {
      return DeleteTable();
    }
    return Container();
  }

  Widget table() => ActiveTable();
  Widget deletedSwitchBtn() => Row(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          SwitchBtnwithoutC(
              onpressed: () {
                setState(() {
                  showActive = false;
                  showArchived = false;
                  showDeleted1 = false;
                  showDeleted = true;
                  showCupons = false;
                });
              },
              text: "Deleted(Pending)",
              color: showDeleted == true
                  ? ColorConstraints.blue
                  : ColorConstraints.textgrey,
              width: 0.38,
              height: 0.05),
          SwitchBtnwithoutL(
              onpressed: () {
                setState(() {
                  showActive = false;
                  showArchived = false;
                  showDeleted1 = false;
                  showDeleted = false;
                  showCupons = true;
                });
              },
              text: "Coupons",
              color: showCupons == true
                  ? ColorConstraints.blue
                  : ColorConstraints.textgrey,
              width: 0.32,
              height: 0.05),
        ],
      );
  Widget couponTable() => CouponsTable();
  Widget Deletedtable() => DeletedPendingTable();
  Widget switchBtn() => Row(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          SwitchBtnwithoutC(
              onpressed: () {
                setState(() {
                  showActive = true;
                  showArchived = false;
                  showDeleted1 = false;
                  showDeleted = false;
                  showCupons = false;
                });
              },
              text: "Active",
              color: showActive == true
                  ? ColorConstraints.blue
                  : ColorConstraints.textgrey,
              width: 0.3,
              height: 0.05),
          SwitchBtn(
              onpressed: () {
                setState(() {
                  showActive = false;
                  showArchived = true;
                  showDeleted1 = false;
                  showDeleted = false;
                  showCupons = false;
                });
              },
              text: 'Disabled',
              color: showArchived == true
                  ? ColorConstraints.blue
                  : ColorConstraints.textgrey,
              width: 0.3,
              height: 0.05),
          SwitchBtnwithoutL(
              onpressed: () {
                setState(() {
                  showActive = false;
                  showArchived = false;
                  showDeleted1 = true;
                  showDeleted = false;
                  showCupons = false;
                });
              },
              text: "Deleted",
              color: showDeleted1 == true
                  ? ColorConstraints.blue
                  : ColorConstraints.textgrey,
              width: 0.3,
              height: 0.05),
        ],
      );

  Widget subscriptiontxt() => Container(
      padding: EdgeInsets.only(left: 20, right: 20),
      child: GreyText(text: TranslateKeys.subscriptionToTradingtxt));
}
