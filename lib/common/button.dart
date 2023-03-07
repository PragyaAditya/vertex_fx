import 'package:flutter/material.dart';

import 'package:vertax_fx/colorconstraint/color_constraint.dart';

class Button extends StatefulWidget {
  final VoidCallback onpressed;
  final String text;
  final Color color;
  final double width;

  const Button(
      {Key? key,
      required this.onpressed,
      required this.text,
      required this.color,
      required this.width})
      : super(key: key);

  @override
  State<Button> createState() => _ButtonState();
}

class _ButtonState extends State<Button> {
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: MediaQuery.of(context).size.width * widget.width,
      height: MediaQuery.of(context).size.height * 0.058,
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
                    borderRadius: BorderRadius.circular(10))),
            child: _text(),
          )),
    );
  }

  Widget _text() {
    return Text(
      widget.text,
      style: TextStyle(fontSize: 14, color: ColorConstraints.white),
      maxLines: 1,
      overflow: TextOverflow.ellipsis,
    );
  }
}
