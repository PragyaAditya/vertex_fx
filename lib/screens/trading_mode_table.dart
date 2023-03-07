import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:vertax_fx/colorconstraint/color_constraint.dart';

class TradingModeTable extends StatefulWidget {
  const TradingModeTable({super.key});

  @override
  State<TradingModeTable> createState() => _TradingModeTableState();
}

class _TradingModeTableState extends State<TradingModeTable> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: SingleChildScrollView(
        scrollDirection: Axis.horizontal,
        child: Container(
          // width: 400,
          // color: Colors.red,
          child: DataTable(
              headingRowHeight: 30,
              dataRowHeight: 30,
              columnSpacing: 15,
              decoration: BoxDecoration(),
              dividerThickness: 1,
              columns: [
                DataColumn(
                    label: Text(
                  'Date',
                  style: TextStyle(
                    fontSize: 9,
                    fontWeight: FontWeight.bold,
                    color: ColorConstraints.blue,
                  ),
                  textAlign: TextAlign.center,
                )),
                DataColumn(
                    label: Text(
                  'Type',
                  style: TextStyle(
                      fontSize: 9,
                      fontWeight: FontWeight.bold,
                      color: ColorConstraints.blue),
                  textAlign: TextAlign.center,
                )),
                DataColumn(
                    label: Text(
                  'Amount',
                  style: TextStyle(
                      fontSize: 9,
                      fontWeight: FontWeight.bold,
                      color: ColorConstraints.blue),
                  textAlign: TextAlign.center,
                )),
                DataColumn(
                    label: Text(
                  'Symbol',
                  style: TextStyle(
                      fontSize: 9,
                      fontWeight: FontWeight.bold,
                      color: ColorConstraints.blue),
                  textAlign: TextAlign.center,
                )),
                DataColumn(
                    label: Text(
                  'Close Date',
                  style: TextStyle(
                      fontSize: 9,
                      fontWeight: FontWeight.bold,
                      color: ColorConstraints.blue),
                  textAlign: TextAlign.center,
                )),
              ],
              rows: [
                DataRow(cells: [
                  DataCell(Text(
                    '5/12/2021 12:01:35 PM',
                    style: TextStyle(
                        fontSize: 7,
                        fontWeight: FontWeight.bold,
                        color: ColorConstraints.textgrey),
                    textAlign: TextAlign.center,
                  )),
                  DataCell(Text(
                    'Type',
                    style: TextStyle(
                        fontSize: 7,
                        fontWeight: FontWeight.bold,
                        color: ColorConstraints.textgrey),
                    textAlign: TextAlign.center,
                  )),
                  DataCell(Text(
                    '2',
                    style: TextStyle(
                        fontSize: 7,
                        fontWeight: FontWeight.bold,
                        color: ColorConstraints.textgrey),
                    textAlign: TextAlign.center,
                  )),
                  DataCell(Text(
                    'EUR / USD',
                    style: TextStyle(
                        fontSize: 7,
                        fontWeight: FontWeight.bold,
                        color: ColorConstraints.textgrey),
                    textAlign: TextAlign.center,
                  )),
                  DataCell(Text(
                    '5/12/2021 12:01:35 PM',
                    style: TextStyle(
                        fontSize: 7,
                        fontWeight: FontWeight.bold,
                        color: ColorConstraints.textgrey),
                    textAlign: TextAlign.center,
                  )),
                ]),
              ]),
        ),
      ),
    );
  }
}
