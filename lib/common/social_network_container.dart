import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:vertax_fx/colorconstraint/color_constraint.dart';
import 'package:vertax_fx/common/button.dart';
import 'package:vertax_fx/common/textfield.dart';
import 'package:vertax_fx/translatekeys/translate_keys.dart';

class SocialMediaContainer extends StatefulWidget {
  const SocialMediaContainer({super.key});

  @override
  State<SocialMediaContainer> createState() => _SocialMediaContainerState();
}

class _SocialMediaContainerState extends State<SocialMediaContainer> {
  @override
  Widget build(BuildContext context) {
    return Container(
      // height: MediaQuery.of(context).size.height,

      child: Column(
        mainAxisSize: MainAxisSize.max,
        children: [
          SizedBox(
            height: MediaQuery.of(context).size.height * 0.06,
          ),
          twitterField(),
          SizedBox(
            height: MediaQuery.of(context).size.height * 0.024,
          ),
          facebookField(),
          SizedBox(
            height: MediaQuery.of(context).size.height * 0.024,
          ),
          linkedINField(),
          SizedBox(
            height: MediaQuery.of(context).size.height * 0.024,
          ),
          instagramField(),
          SizedBox(
            height: MediaQuery.of(context).size.height * 0.1,
          ),
          saveBtn(),
        ],
      ),
    );
  }

  Widget twitterField() => Center(
        child: IconTextField(
            labelTxt: TranslateKeys.twittertxt,
            text: TranslateKeys.twitterUserName,
            hintText: TranslateKeys.twitterUserName),
      );
  Widget facebookField() => Center(
        child: IconTextField(
            labelTxt: TranslateKeys.facebookTxt,
            text: TranslateKeys.facebookProfileUrl,
            hintText: TranslateKeys.facebookProfileUrl),
      );
  Widget linkedINField() => Center(
        child: IconTextField(
            labelTxt: TranslateKeys.linkedIntxt,
            text: TranslateKeys.linkedInProfileUrl,
            hintText: TranslateKeys.linkedInProfileUrl),
      );
  Widget instagramField() => Center(
        child: IconTextField(
            labelTxt: TranslateKeys.instagram,
            text: TranslateKeys.instagraProfileUrl,
            hintText: TranslateKeys.instagraProfileUrl),
      );
  Widget saveBtn() => Align(
        alignment: Alignment.bottomCenter,
        child:
            // Center(
            // child:
            Button(
                onpressed: () {},
                text: TranslateKeys.savetxt,
                color: ColorConstraints.blue1,
                width: 0.79),
        // ),
      );
}
