import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:vertax_fx/colorconstraint/color_constraint.dart';

class CouponsTable extends StatelessWidget {
  const CouponsTable({super.key});

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
                  columnSpacing: 30,
                  decoration: BoxDecoration(),
                  dividerThickness: 1,
                  columns: [
                DataColumn(
                    label: Text(
                  'Coupon',
                  style: TextStyle(
                    fontSize: 9,
                    fontWeight: FontWeight.bold,
                    color: ColorConstraints.blue,
                  ),
                  textAlign: TextAlign.center,
                )),
                DataColumn(
                    label: Text(
                  'Points',
                  style: TextStyle(
                      fontSize: 9,
                      fontWeight: FontWeight.bold,
                      color: ColorConstraints.blue),
                  textAlign: TextAlign.center,
                )),
                DataColumn(
                    label: Text(
                  'Signal',
                  style: TextStyle(
                      fontSize: 9,
                      fontWeight: FontWeight.bold,
                      color: ColorConstraints.blue),
                  textAlign: TextAlign.center,
                )),
                DataColumn(
                    label: Text(
                  'Exp Date',
                  style: TextStyle(
                      fontSize: 9,
                      fontWeight: FontWeight.bold,
                      color: ColorConstraints.blue),
                  textAlign: TextAlign.center,
                )),
                DataColumn(
                    label: Text(
                  'User',
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
                    'Hanash Signalz',
                    style: TextStyle(
                        fontSize: 7,
                        fontWeight: FontWeight.bold,
                        color: ColorConstraints.textgrey),
                    textAlign: TextAlign.center,
                  )),
                  DataCell(Text(
                    'Public',
                    style: TextStyle(
                        fontSize: 7,
                        fontWeight: FontWeight.bold,
                        color: ColorConstraints.textgrey),
                    textAlign: TextAlign.center,
                  )),
                  DataCell(Text(
                    '2312313',
                    style: TextStyle(
                        fontSize: 7,
                        fontWeight: FontWeight.bold,
                        color: ColorConstraints.textgrey),
                    textAlign: TextAlign.center,
                  )),
                  DataCell(Text(
                    'Enabled',
                    style: TextStyle(
                        fontSize: 7,
                        fontWeight: FontWeight.bold,
                        color: ColorConstraints.textgrey),
                    textAlign: TextAlign.center,
                  )),
                  DataCell(Text(
                    'Enabled',
                    style: TextStyle(
                        fontSize: 7,
                        fontWeight: FontWeight.bold,
                        color: ColorConstraints.textgrey),
                    textAlign: TextAlign.center,
                  )),
                ])
              ])),
        ));
  }
}
