import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:vertax_fx/colorconstraint/color_constraint.dart';

class ButtonWithoutHw extends StatefulWidget {
  final VoidCallback onpressed;
  final String text;
  final Color color;
  final double width;
  final double height;
  FontWeight? fontWeight;
  ButtonWithoutHw(
      {super.key,
      this.fontWeight,
      required this.onpressed,
      required this.text,
      required this.color,
      required this.width,
      required this.height});

  @override
  State<ButtonWithoutHw> createState() => _ButtonWithoutHwState();
}

class _ButtonWithoutHwState extends State<ButtonWithoutHw> {
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
                primary: widget.color,
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(5))),
            child: _text(),
          )),
    );
  }

  Widget _text() {
    return Text(
      widget.text,
      style: TextStyle(
          fontSize: 10,
          color: ColorConstraints.white,
          letterSpacing: 0.1,
          fontWeight: FontWeight.bold),
      maxLines: 1,
      overflow: TextOverflow.ellipsis,
    );
  }
}
