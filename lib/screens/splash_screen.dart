import 'package:flutter/material.dart';
import 'package:vertax_fx/colorconstraint/color_constraint.dart';
import 'package:vertax_fx/screens/sign_in_page.dart';
import 'package:vertax_fx/translatekeys/translate_keys.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    Future.delayed(
        const Duration(seconds: 5),
        () => Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => SignInPage()),
            ));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Container(
      height: MediaQuery.of(context).size.height,
      width: MediaQuery.of(context).size.width,
      decoration: const BoxDecoration(
        gradient: LinearGradient(
          begin: Alignment.center,
          end: Alignment(0, 1),
          colors: <Color>[ColorConstraints.white, ColorConstraints.pink1],
        ),
      ),
      child: Column(
        children: [
          Spacer(),
          versionTxt(),
          SizedBox(
            height: 20,
          )
        ],
      ),
    ));
  }

  Widget versionTxt() => Center(
        child: Text(
          TranslateKeys.versiontxt,
          style: TextStyle(fontSize: 10, color: ColorConstraints.blue),
        ),
      );
}
