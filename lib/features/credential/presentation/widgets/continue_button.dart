import 'package:fitness_app/features/credential/presentation/provider/credential_controller.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import '../../../../core/constants/text_constants.dart';
import '../../../../core/shared_widgets.dart/rectangle_button.dart';
import '../../../user_information/presentation/pages/get_name_page.dart';

class ContinueButton extends StatelessWidget {
  const ContinueButton({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    return Consumer<CredentialController>(
      builder: (
        BuildContext context,
        CredentialController value,
        Widget? child,
      ) {
        return RectangleButton(
          isActive: value.isContinueButtonActive,
          child: Text(
            EnglishText.continueText,
            style: TextStyle(
              color: Colors.white,
              fontSize: height * 0.023,
            ),
          ),
          onTap: () {
            value.selectedProcess();

            Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) => const GetNamePage(),
              ),
            );
          },
        );
      },
    );
  }
}
