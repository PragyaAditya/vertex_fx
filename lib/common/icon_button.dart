import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

import 'package:vertax_fx/colorconstraint/color_constraint.dart';

class IconBtn extends StatefulWidget {
  final VoidCallback onpressed;
  final String text;
  final Color color;
  final double width;
 final  Widget logoimage ;

  const IconBtn(
      {Key? key,
      required this.onpressed,
      required this.logoimage ,
      required this.text,
      required this.color,
      required this.width})
      : super(key: key);

  @override
  State<IconBtn> createState() => _IconBtnState();
}

class _IconBtnState extends State<IconBtn> {
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: MediaQuery.of(context).size.width * widget.width,
      height: MediaQuery.of(context).size.height * 0.06,
      child: Container(
          decoration: BoxDecoration(
            // color: Colors.grey[300],
            borderRadius: BorderRadius.circular(25),
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
                    borderRadius: BorderRadius.circular(25))),
            child: Row(
              children: [
                widget.logoimage ,
                // SvgPicture.asset(
                //     height: 15, width: 20, logoimage   ),
                SizedBox(
                  width: 10,
                ),
                _text(),
              ],
            ),
          )),
    );
  }

  Widget _text() {
    return Text(
      widget.text,
      style: TextStyle(fontSize: 15, color: ColorConstraints.white),
      maxLines: 1,
      overflow: TextOverflow.ellipsis,
    );
  }
}
