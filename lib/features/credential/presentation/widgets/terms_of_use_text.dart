import 'package:fitness_app/core/constants/text_constants.dart';
import 'package:flutter/material.dart';

class TermsOfUseText extends StatelessWidget {
  const TermsOfUseText({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    return Container(
      margin: EdgeInsets.all(width * 0.05),
      child: RichText(
        textAlign: TextAlign.center,
        text: const TextSpan(
          style: TextStyle(
            color: Colors.grey,
            height: 1.3,
          ),
          children: [
            TextSpan(
              text: EnglishText.loremIpsum1,
            ),
            TextSpan(
              text: EnglishText.termsOfUse,
              style: TextStyle(
                color: Colors.blue,
                decoration: TextDecoration.underline,
              ),
            ),
            TextSpan(text: EnglishText.loremIpsum2),
            TextSpan(
              text: EnglishText.privacyNotice,
              style: TextStyle(
                color: Colors.blue,
                decoration: TextDecoration.underline,
              ),
            ),
            TextSpan(text: EnglishText.loremIpsum3),
          ],
        ),
      ),
    );
  }
}
