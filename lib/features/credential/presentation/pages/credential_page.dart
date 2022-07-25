import 'package:fitness_app/core/constants/text_constants.dart';
import 'package:fitness_app/core/shared_widgets.dart/custom_back_button.dart';
import 'package:fitness_app/core/shared_widgets.dart/rectangle_button.dart';
import 'package:fitness_app/features/credential/presentation/widgets/sign_up_view.dart';
import 'package:flutter/material.dart';
import '../../../../core/enums/horizontal_direction_enum.dart';
import '../../../../core/shared_widgets.dart/two_button_switch.dart';

class CredentialPage extends StatelessWidget {
  const CredentialPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    double height = MediaQuery.of(context).size.height;

    return Scaffold(
      body: Container(
        margin: const EdgeInsets.symmetric(vertical: 30, horizontal: 20),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Row(
              children: [
                CustomBackButton(
                  mainContext: context,
                  size: width * 0.05,
                )
              ],
            ),

            Container(
              margin: EdgeInsets.only(top: height*0.07,bottom: height*0.02),
              child: TwoButtonSwitch(
                activeSide: HorizontalDirection.right,
                onChanged: (direction) {},
                leftButtonText: EnglishText.signUp,
                rightButtonText: EnglishText.signIn,
              ),
            ),
            
            const SignUpView(),

            Column(
              children: [
                RectangleButton(text: EnglishText.continueText, onTap: () {}),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
