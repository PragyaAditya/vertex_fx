import 'package:flutter/cupertino.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

class FlagContainer extends StatelessWidget {
  const FlagContainer({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 20,
      width: 20,
      child: Image(image: AssetImage('assets/download.png')),
    );
  }
}

class LogoContainer extends StatelessWidget {
  final String imagename;
  const LogoContainer({super.key, required this.imagename});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 40,
      width: 30,
      child: Image(image: AssetImage(imagename)),
    );
  }
}
