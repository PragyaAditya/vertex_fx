import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:vertax_fx/colorconstraint/color_constraint.dart';
import 'package:vertax_fx/common/appbar_title_text.dart';
import 'package:vertax_fx/common/myvertex_account_card.dart';
import 'package:vertax_fx/translatekeys/translate_keys.dart';

class MyvertexAccountPage extends StatefulWidget {
  const MyvertexAccountPage({super.key});

  @override
  State<MyvertexAccountPage> createState() => _MyvertexAccountPageState();
}

class _MyvertexAccountPageState extends State<MyvertexAccountPage> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: ColorConstraints.white,
        appBar: AppBar(
          centerTitle: true,
          title: AppBarTitleText(
            text: TranslateKeys.myvertexAccount,
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
        body: SingleChildScrollView(
          child: Column(
            children: [listCards()],
          ),
        ),
      ),
    );
  }

  Widget listCards() => Container(
        height: MediaQuery.of(context).size.height,
        width: MediaQuery.of(context).size.width,
        child: ListView.separated(
            separatorBuilder: (context, index) {
              return Divider();
            },
            itemCount: 4,
            itemBuilder: (BuildContext context, int index) {
              return
                  // Text("hello");
                  MyVertexAccountCard();
            }),
      );
}
