import 'package:flutter/material.dart';
import '../../../../core/shared_widgets.dart/custom_back_button.dart';

class CredentialPageBackButton extends StatelessWidget {
  const CredentialPageBackButton({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    return Row(
      children: [
        CustomBackButton(
          mainContext: context,
          size: width * 0.05,
        )
      ],
    );
  }
}
