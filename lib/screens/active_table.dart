import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:vertax_fx/colorconstraint/color_constraint.dart';

class ActiveTable extends StatelessWidget {
  const ActiveTable({super.key});

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
                columnSpacing: 7,
                decoration: BoxDecoration(),
                dividerThickness: 1,
                columns: [
                  DataColumn(
                      label: Text(
                    'Name',
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
                    'Account ID',
                    style: TextStyle(
                        fontSize: 9,
                        fontWeight: FontWeight.bold,
                        color: ColorConstraints.blue),
                    textAlign: TextAlign.center,
                  )),
                  DataColumn(
                      label: Text(
                    'Status',
                    style: TextStyle(
                        fontSize: 9,
                        fontWeight: FontWeight.bold,
                        color: ColorConstraints.blue),
                    textAlign: TextAlign.center,
                  )),
                  DataColumn(
                      label: Text(
                    'Price',
                    style: TextStyle(
                        fontSize: 9,
                        fontWeight: FontWeight.bold,
                        color: ColorConstraints.blue),
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
                    'Growth',
                    style: TextStyle(
                        fontSize: 9,
                        fontWeight: FontWeight.bold,
                        color: ColorConstraints.blue),
                    textAlign: TextAlign.center,
                  )),
                  DataColumn(
                      label: Text(
                    'Subscribers',
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
                      '0.00',
                      style: TextStyle(
                          fontSize: 7,
                          fontWeight: FontWeight.bold,
                          color: ColorConstraints.textgrey),
                      textAlign: TextAlign.center,
                    )),
                    DataCell(Text(
                      'per month',
                      style: TextStyle(
                          fontSize: 7,
                          fontWeight: FontWeight.bold,
                          color: ColorConstraints.textgrey),
                      textAlign: TextAlign.center,
                    )),
                    DataCell(Text(
                      '12312.03%',
                      style: TextStyle(
                          fontSize: 7,
                          fontWeight: FontWeight.bold,
                          color: ColorConstraints.textgrey),
                      textAlign: TextAlign.center,
                    )),
                    DataCell(Text('30',
                        style: TextStyle(
                            fontSize: 7,
                            fontWeight: FontWeight.bold,
                            color: ColorConstraints.textgrey),
                        textAlign: TextAlign.center)),
                  ]),
                ]),
          ),
        ),
      );
  }
}