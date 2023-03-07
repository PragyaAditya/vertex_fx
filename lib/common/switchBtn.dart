import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:vertax_fx/colorconstraint/color_constraint.dart';

class SwitchBtn extends StatefulWidget {
  final VoidCallback onpressed;
  final String text;
  final Color color;
  final double width;
  final double height;
  FontWeight? fontWeight;
  SwitchBtn(
      {super.key,
      this.fontWeight,
      required this.onpressed,
      required this.text,
      required this.color,
      required this.width,
      required this.height});

  @override
  State<SwitchBtn> createState() => _SwitchBtnState();
}

class _SwitchBtnState extends State<SwitchBtn> {
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: MediaQuery.of(context).size.width * widget.width,
      height: MediaQuery.of(context).size.height * widget.height,
      child: Container(
          decoration: BoxDecoration(
            // color: Colors.grey[300],
            borderRadius: BorderRadius.circular(5),
            // boxShadow: [
            //   const BoxShadow(
            //     color: Color(0xFFBEBEBE),
            //     offset: Offset(10, 10),
            //     blurRadius: 10,
            //     spreadRadius: 2,
            //   ),
            //   const BoxShadow(
            //     color: Colors.white,
            //     offset: Offset(-10, -10),
            //     blurRadius: 5,
            //     spreadRadius: 8,
            //   ),
            // ]
          ),
          child: ElevatedButton(
            onPressed: widget.onpressed,
            style: ElevatedButton.styleFrom(
                tapTargetSize: MaterialTapTargetSize.shrinkWrap,
                elevation: 0,
                primary: ColorConstraints.white,
                shape: RoundedRectangleBorder(
                    side: BorderSide(color: ColorConstraints.grey0),
                    borderRadius: BorderRadius.circular(0))),
            child: _text(),
          )),
    );
  }

  Widget _text() {
    return Text(
      widget.text,
      style: TextStyle(
          fontSize: 13,
          color: widget.color,
          //  ColorConstraints.textgrey,
          letterSpacing: 0.1,
          fontWeight: FontWeight.bold),
      maxLines: 1,
      overflow: TextOverflow.ellipsis,
    );
  }
}

class SwitchBtnwithoutC extends StatefulWidget {
  final VoidCallback onpressed;
  final String text;
  final Color color;
  final double width;
  final double height;
  FontWeight? fontWeight;
  SwitchBtnwithoutC(
      {super.key,
      this.fontWeight,
      required this.onpressed,
      required this.text,
      required this.color,
      required this.width,
      required this.height});

  @override
  State<SwitchBtnwithoutC> createState() => _SwitchBtnwithoutCState();
}

class _SwitchBtnwithoutCState extends State<SwitchBtnwithoutC> {
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: MediaQuery.of(context).size.width * widget.width,
      height: MediaQuery.of(context).size.height * widget.height,
      child: Container(
          decoration: BoxDecoration(
            // color: Colors.grey[300],
            borderRadius: BorderRadius.circular(5),
            // boxShadow: [
            //   const BoxShadow(
            //     color: Color(0xFFBEBEBE),
            //     offset: Offset(10, 10),
            //     blurRadius: 10,
            //     spreadRadius: 2,
            //   ),
            //   const BoxShadow(
            //     color: Colors.white,
            //     offset: Offset(-10, -10),
            //     blurRadius: 5,
            //     spreadRadius: 8,
            //   ),
            // ]
          ),
          child: ElevatedButton(
            onPressed: widget.onpressed,
            style: ElevatedButton.styleFrom(
                tapTargetSize: MaterialTapTargetSize.shrinkWrap,
                elevation: 0,
                primary: ColorConstraints.white,
                shape: RoundedRectangleBorder(
                    side: BorderSide(color: ColorConstraints.grey0),
                    borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(5),
                        bottomLeft: Radius.circular(5)))),
            child: _text(),
          )),
    );
  }

  Widget _text() {
    return Text(
      widget.text,
      style: TextStyle(
          fontSize: 13,
          color: widget.color,
          letterSpacing: 0.1,
          fontWeight: FontWeight.bold),
      maxLines: 1,
      overflow: TextOverflow.ellipsis,
    );
  }
}

class SwitchBtnwithoutL extends StatefulWidget {
  final VoidCallback onpressed;
  final String text;
  final Color color;
  final double width;
  final double height;
  FontWeight? fontWeight;
  SwitchBtnwithoutL(
      {super.key,
      this.fontWeight,
      required this.onpressed,
      required this.text,
      required this.color,
      required this.width,
      required this.height});

  @override
  State<SwitchBtnwithoutL> createState() => _SwitchBtnwithoutLState();
}

class _SwitchBtnwithoutLState extends State<SwitchBtnwithoutL> {
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: MediaQuery.of(context).size.width * widget.width,
      height: MediaQuery.of(context).size.height * widget.height,
      child: Container(
          decoration: BoxDecoration(
            // color: Colors.grey[300],
            borderRadius: BorderRadius.circular(5),
            // boxShadow: [
            //   const BoxShadow(
            //     color: Color(0xFFBEBEBE),
            //     offset: Offset(10, 10),
            //     blurRadius: 10,
            //     spreadRadius: 2,
            //   ),
            //   const BoxShadow(
            //     color: Colors.white,
            //     offset: Offset(-10, -10),
            //     blurRadius: 5,
            //     spreadRadius: 8,
            //   ),
            // ]
          ),
          child: ElevatedButton(
            onPressed: widget.onpressed,
            style: ElevatedButton.styleFrom(
                tapTargetSize: MaterialTapTargetSize.shrinkWrap,
                elevation: 0,
                primary: ColorConstraints.white,
                shape: RoundedRectangleBorder(
                    side: BorderSide(color: ColorConstraints.grey0),
                    borderRadius: BorderRadius.only(
                        topRight: Radius.circular(5),
                        bottomRight: Radius.circular(5)))),
            child: _text(),
          )),
    );
  }

  Widget _text() {
    return Text(
      widget.text,
      style: TextStyle(
          fontSize: 13,
          color: widget.color,
          letterSpacing: 0.1,
          fontWeight: FontWeight.bold),
      maxLines: 1,
      overflow: TextOverflow.ellipsis,
    );
  }
}

class SwitchBtnwithCurve extends StatefulWidget {
  final VoidCallback onpressed;
  final String text;
  final Color color;
  final double width;
  final double height;
  FontWeight? fontWeight;
  SwitchBtnwithCurve(
      {super.key,
      this.fontWeight,
      required this.onpressed,
      required this.text,
      required this.color,
      required this.width,
      required this.height});

  @override
  State<SwitchBtnwithCurve> createState() => _SwitchBtnwithCurveState();
}

class _SwitchBtnwithCurveState extends State<SwitchBtnwithCurve> {
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: MediaQuery.of(context).size.width * widget.width,
      height: MediaQuery.of(context).size.height * widget.height,
      child: Container(
          decoration: BoxDecoration(
            // color: Colors.grey[300],
            borderRadius: BorderRadius.circular(5),
            // boxShadow: [
            //   const BoxShadow(
            //     color: Color(0xFFBEBEBE),
            //     offset: Offset(10, 10),
            //     blurRadius: 10,
            //     spreadRadius: 2,
            //   ),
            //   const BoxShadow(
            //     color: Colors.white,
            //     offset: Offset(-10, -10),
            //     blurRadius: 5,
            //     spreadRadius: 8,
            //   ),
            // ]
          ),
          child: ElevatedButton(
            onPressed: widget.onpressed,
            style: ElevatedButton.styleFrom(
                tapTargetSize: MaterialTapTargetSize.shrinkWrap,
                elevation: 0,
                primary: ColorConstraints.white,
                shape: RoundedRectangleBorder(
                    side: BorderSide(color: ColorConstraints.grey0),
                    borderRadius: BorderRadius.all(
                      Radius.circular(5),
                    ))),
            child: _text(),
          )),
    );
  }

  Widget _text() {
    return Text(
      widget.text,
      style: TextStyle(
          fontSize: 11,
          color: widget.color,
          letterSpacing: 0.1,
          fontWeight: FontWeight.bold),
      maxLines: 1,
      overflow: TextOverflow.ellipsis,
    );
  }
}
