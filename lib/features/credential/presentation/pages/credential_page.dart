import 'package:fitness_app/core/shared_widgets.dart/back_button.dart';
import 'package:fitness_app/core/shared_widgets.dart/rectangle_button.dart';
import 'package:fitness_app/features/credential/presentation/widgets/sign_in_view.dart';
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
                leftButtonText: "Sign up",
                rightButtonText: "Sing In",
              ),
            ),
            
            const SignUpView(),

            Column(
              children: [
                RectangleButton(text: "Continue", onTap: () {}),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
