import 'package:flutter/material.dart';
import '../../../../core/constants/text_constants.dart';
import '../../../../core/shared_widgets.dart/rectangle_button.dart';
import '../pages/get_body_info_page.dart';

class GetNamePageContinueButton extends StatelessWidget {
  const GetNamePageContinueButton({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return RectangleButton(
      child: const Text(EnglishText.continueText),
      onTap: () {
        Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) => const GetBodyInfoPage(),
          ),
        );
      },
    );
  }
}
