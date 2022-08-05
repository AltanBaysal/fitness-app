import 'package:flutter/material.dart';

import '../../../../core/constants/colors_constants.dart';
import '../../../../core/constants/text_constants.dart';
import '../../../../core/shared_widgets.dart/rectangle_button.dart';

class ContinueWithoutSigninUpButton extends StatelessWidget {
  const ContinueWithoutSigninUpButton({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return RectangleButton(
      onTap: () {},
      color: CustomColors.lightBlack,
      child: const Text(EnglishText.continueWithoutSigningUp),
    );
  }
}
