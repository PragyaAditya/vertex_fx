import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:vertax_fx/colorconstraint/color_constraint.dart';

class BlueOutlineButton extends StatefulWidget {
  final VoidCallback onpressed;
  final String text;
  final Color color;
  final double width;
  const BlueOutlineButton(
      {super.key,
      required this.onpressed,
      required this.text,
      required this.color,
      required this.width});

  @override
  State<BlueOutlineButton> createState() => _BlueOutlineButtonState();
}

class _BlueOutlineButtonState extends State<BlueOutlineButton> {
  @override
  Widget build(BuildContext context) {
    return SizedBox(
        width: MediaQuery.of(context).size.width * widget.width,
        height: MediaQuery.of(context).size.height * 0.058,
        child: Container(
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(5),
            ),
            child: ElevatedButton(
              onPressed: widget.onpressed,
              style: ElevatedButton.styleFrom(
                  tapTargetSize: MaterialTapTargetSize.shrinkWrap,
                  elevation: 0,
                  primary: widget.color,
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10),
                      side: BorderSide(color: ColorConstraints.blue1))),
              child: _text(),
            )));
  }

  Widget _text() {
    return Text(
      widget.text,
      style: TextStyle(
          fontSize: 14,
          color: ColorConstraints.blue2,
          fontWeight: FontWeight.bold),
      maxLines: 1,
      overflow: TextOverflow.ellipsis,
    );
  }
}
