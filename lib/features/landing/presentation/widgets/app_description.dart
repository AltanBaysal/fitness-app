
import 'package:flutter/material.dart';
import '../../../../core/constants/text_constants.dart';

class AppDescription extends StatelessWidget {
  const AppDescription({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    return Text(
      EnglishText.loremIpsum1,
      style: TextStyle(
        fontSize: height * 0.02,
      ),
      textAlign: TextAlign.center,
    );
  }
}
