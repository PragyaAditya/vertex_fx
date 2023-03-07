import 'package:flutter/material.dart';

import 'package:vertax_fx/colorconstraint/color_constraint.dart';

class IconTextField extends StatelessWidget {
  // final IconData icon;
  final String text;
  final String hintText;
  final TextEditingController? controller;
  final TextInputType? textInputType;
  final String labelTxt;

  // final Widget widget;

  const IconTextField(
      {Key? key,
      required this.labelTxt,
      required this.text,
      this.controller,
      this.textInputType,
      required this.hintText})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: MediaQuery.of(context).size.height * 0.06,
      width: MediaQuery.of(context).size.width * 0.9,
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(40),
          color: ColorConstraints.white),
      child: Center(
        child: TextFormField(
          controller: controller,
          keyboardType: textInputType,

          decoration: InputDecoration(
              contentPadding: EdgeInsets.only(left: 20),
              labelText: labelTxt,
              labelStyle:
                  TextStyle(color: ColorConstraints.grey2, fontSize: 14),
              hintText: hintText,
              hintStyle: TextStyle(color: ColorConstraints.grey2, fontSize: 12),
              focusedBorder: OutlineInputBorder(
                borderRadius: BorderRadius.circular(10),
                borderSide: BorderSide(
                    width: 1, color: ColorConstraints.grey0), //<-- SEE HERE
              ),
              enabledBorder: OutlineInputBorder(
                borderRadius: BorderRadius.circular(10),
                borderSide: BorderSide(
                    width: 1, color: ColorConstraints.grey0), //<-- SEE HERE
              )),

          // widget
        ),
      ),
    );
  }
}

class PasswordIconTextField extends StatefulWidget {
  // final IconData icon;
  final String text;
  final String hintText;
  final TextEditingController? controller;
  final TextInputType? textInputType;
  final String labelTxt;

  // final Widget widget;

  const PasswordIconTextField(
      {Key? key,
      required this.labelTxt,
      required this.text,
      this.controller,
      this.textInputType,
      required this.hintText})
      : super(key: key);

  @override
  State<PasswordIconTextField> createState() => _PasswordIconTextFieldState();
}

class _PasswordIconTextFieldState extends State<PasswordIconTextField> {
  @override
  Widget build(BuildContext context) {
    return
        // Container(
        //   height: MediaQuery.of(context).size.height * 0.06,
        //   width: MediaQuery.of(context).size.width * 0.9,
        //   decoration: BoxDecoration(
        //       borderRadius: BorderRadius.circular(40),
        //       color: ColorConstraints.white),
        //   child:
        SizedBox(
      height: 53,
      child: TextFormField(
        textAlign: TextAlign.start,
        obscureText: true,
        // obscuringCharacter: '*',
        controller: widget.controller,
        keyboardType: widget.textInputType,
        style: TextStyle(
            fontSize: 25,
            fontWeight: FontWeight.bold,
            // decorationThickness: 10,
            // wordSpacing: 10
            letterSpacing: 2),
        decoration: InputDecoration(
            labelText: widget.labelTxt,
            labelStyle: TextStyle(
                color: ColorConstraints.grey2, fontSize: 12, letterSpacing: 0),
            hintText: widget.hintText,
            hintStyle: TextStyle(
                color: ColorConstraints.grey2, fontSize: 12, letterSpacing: 0),
            isDense: true,
            contentPadding: EdgeInsets.all(13),
            // border: OutlineInputBorder(),
            focusedBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(10),
              borderSide: BorderSide(
                  width: 1, color: ColorConstraints.grey0), //<-- SEE HERE
            ),
            enabledBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(10),
              borderSide: BorderSide(
                  width: 1, color: ColorConstraints.grey0), //<-- SEE HERE
            )),

        // widget
        // ),
      ),
    );
  }
}

class IconTextDropDownField extends StatelessWidget {
  // final IconData icon;
  final String text;
  final String hintText;
  final TextEditingController? controller;
  final TextInputType? textInputType;
  final String labelTxt;

  // final Widget widget;

  const IconTextDropDownField(
      {Key? key,
      required this.labelTxt,
      required this.text,
      this.controller,
      this.textInputType,
      required this.hintText})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: MediaQuery.of(context).size.height * 0.06,
      width: MediaQuery.of(context).size.width * 0.9,
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(40),
          color: ColorConstraints.white),
      child: Center(
        child: TextFormField(
          controller: controller,
          keyboardType: textInputType,

          decoration: InputDecoration(
              suffixIcon: Icon(
                Icons.keyboard_arrow_down_rounded,
                color: ColorConstraints.yellow1,
              ),
              contentPadding: EdgeInsets.only(left: 20),
              labelText: labelTxt,
              labelStyle:
                  TextStyle(color: ColorConstraints.grey2, fontSize: 14),
              hintText: hintText,
              hintStyle: TextStyle(color: ColorConstraints.grey2, fontSize: 12),
              focusedBorder: OutlineInputBorder(
                borderRadius: BorderRadius.circular(10),
                borderSide: BorderSide(
                    width: 1, color: ColorConstraints.grey0), //<-- SEE HERE
              ),
              enabledBorder: OutlineInputBorder(
                borderRadius: BorderRadius.circular(10),
                borderSide: BorderSide(
                    width: 1, color: ColorConstraints.grey0), //<-- SEE HERE
              )),

          // widget
        ),
      ),
    );
  }
}

class DollerTextField extends StatelessWidget {
  // final IconData icon;

  final TextEditingController? controller;
  final TextInputType? textInputType;

  // final Widget widget;

  const DollerTextField({
    Key? key,
    this.controller,
    this.textInputType,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: MediaQuery.of(context).size.height * 0.06,
      width: MediaQuery.of(context).size.width * 0.45,
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(40),
          color: ColorConstraints.white),
      child: Center(
        child: TextFormField(
          controller: controller,
          keyboardType: TextInputType.number,

          decoration: InputDecoration(
              suffixText: "\$",
              suffixStyle: TextStyle(
                  color: ColorConstraints.black, fontWeight: FontWeight.bold),
              // Text(
              //     "\$",
              //     style: TextStyle(fontWeight: FontWeight.bold),
              //   ) ,
              // suffix: Text(
              //   "\$",
              //   style: TextStyle(fontWeight: FontWeight.bold),
              // ),
              contentPadding: EdgeInsets.only(left: 20, right: 10),
              labelStyle:
                  TextStyle(color: ColorConstraints.grey2, fontSize: 14),
              hintStyle: TextStyle(color: ColorConstraints.grey2, fontSize: 12),
              focusedBorder: OutlineInputBorder(
                borderRadius: BorderRadius.circular(10),
                borderSide: BorderSide(
                    width: 1, color: ColorConstraints.grey0), //<-- SEE HERE
              ),
              enabledBorder: OutlineInputBorder(
                borderRadius: BorderRadius.circular(10),
                borderSide: BorderSide(
                    width: 1, color: ColorConstraints.grey0), //<-- SEE HERE
              )),

          // widget
        ),
      ),
    );
  }
}
