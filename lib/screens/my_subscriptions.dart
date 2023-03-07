import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:vertax_fx/colorconstraint/color_constraint.dart';
import 'package:vertax_fx/common/appbar_title_text.dart';
import 'package:vertax_fx/common/grey_text.dart';
import 'package:vertax_fx/translatekeys/translate_keys.dart';

class MySubscriptionsPage extends StatefulWidget {
  const MySubscriptionsPage({super.key});

  @override
  State<MySubscriptionsPage> createState() => _MySubscriptionsPageState();
}

class _MySubscriptionsPageState extends State<MySubscriptionsPage> {
  List<bool> isSelected = [true, false, false];
  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
      backgroundColor: ColorConstraints.white,
      appBar: AppBar(
        centerTitle: true,
        title: AppBarTitleText(
          text: TranslateKeys.mysubscriptions,
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
            height: MediaQuery.of(context).size.height * 0.03,
          ),
          tableActive()
        ],
      ),
    ));
  }

  Widget tableActive() => Padding(
        padding: const EdgeInsets.all(8.0),
        child: Container(
          width: 340,
          // color: Colors.red,
          child: DataTable(
              headingRowHeight: 30,
              dataRowHeight: 0.02,
              columnSpacing: 30,
              decoration: BoxDecoration(),
              dividerThickness: 1,
              columns: [
                DataColumn(
                    label: Text('Name',
                        style: TextStyle(
                            fontSize: 10,
                            fontWeight: FontWeight.bold,
                            color: ColorConstraints.blue))),
                DataColumn(
                    label: Text('Broker',
                        style: TextStyle(
                            fontSize: 10,
                            fontWeight: FontWeight.bold,
                            color: ColorConstraints.blue))),
                DataColumn(
                    label: Text('ID',
                        style: TextStyle(
                            fontSize: 10,
                            fontWeight: FontWeight.bold,
                            color: ColorConstraints.blue))),
                DataColumn(
                    label: Text(
                  'Pay type',
                  style: TextStyle(
                      fontSize: 10,
                      fontWeight: FontWeight.bold,
                      color: ColorConstraints.blue),
                )),
                DataColumn(
                    label: Text('Start Date',
                        style: TextStyle(
                            fontSize: 10,
                            fontWeight: FontWeight.bold,
                            color: ColorConstraints.blue))),
              ],
              rows: [
                DataRow(cells: [
                  DataCell(Text(' ')),
                  DataCell(Text(' ')),
                  DataCell(Text(' ')),
                  DataCell(Text(' ')),
                  DataCell(Text(' ')),
                ]),
              ]),
        ),
      );

  Widget switchBtn() => SizedBox(
        height: 35,
        child: ToggleButtons(
          // list of booleans
          isSelected: isSelected,
          // text color of selected toggle
          selectedColor: Color(0xff20387B),
          // text color of not selected toggle
          color: ColorConstraints.textgrey,
          // fill color of selected toggle
          fillColor: Colors.white,
          // when pressed, splash color is seen
          // splashColor: Colors.red,
          // long press to identify highlight color
          // highlightColor: Colors.orange,
          // if consistency is needed for all text style
          textStyle: const TextStyle(fontWeight: FontWeight.bold),
          // border properties for each toggle
          renderBorder: true,
          borderColor: ColorConstraints.borderGrey,
          borderWidth: 1,
          borderRadius: BorderRadius.circular(5),
          selectedBorderColor: ColorConstraints.borderGrey,

          children: [
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 20),
              child: Text('Active',
                  style: TextStyle(fontSize: 16, fontWeight: FontWeight.w600)),
            ),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 20),
              child: Text('Archieved',
                  style: TextStyle(fontSize: 16, fontWeight: FontWeight.w600)),
            ),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 20),
              child: Text('Requests',
                  style: TextStyle(fontSize: 16, fontWeight: FontWeight.w600)),
            ),
          ],
// to select or deselect when pressed
          onPressed: (int newIndex) {
            setState(() {
              // looping through the list of booleans values
              for (int index = 0; index < isSelected.length; index++) {
                // checking for the index value
                if (index == newIndex) {
                  // one button is always set to true
                  isSelected[index] = true;
                } else {
                  // other two will be set to false and not selected
                  isSelected[index] = false;
                }
              }
            });
          },
        ),
      );
  Widget subscriptiontxt() => Container(
      padding: EdgeInsets.only(left: 20, right: 20),
      child: GreyText(text: TranslateKeys.subscriptionToTradingtxt));
}
