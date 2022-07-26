import 'package:fitness_app/core/constants/text_constants.dart';
import 'package:fitness_app/core/enums/log_in_type.dart';
import 'package:fitness_app/core/shared_widgets.dart/custom_back_button.dart';
import 'package:fitness_app/core/shared_widgets.dart/rectangle_button.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import '../../../../core/enums/horizontal_direction_enum.dart';
import '../../../../core/shared_widgets.dart/two_button_switch.dart';
import '../../../user_information/presentation/pages/get_name_page.dart';
import '../provider/credential_controller.dart';
import '../widgets/log_in_view_chooser.dart';

class CredentialPage extends StatelessWidget {
  const CredentialPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    double height = MediaQuery.of(context).size.height;

    return Scaffold(
      body: SingleChildScrollView(
        child: Container(
          margin: const EdgeInsets.symmetric(vertical: 30, horizontal: 20),
          child: SingleChildScrollView(
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

                Consumer<CredentialController>(
                  builder: (
                    BuildContext context,
                    CredentialController value,
                    Widget? child,
                  ) {
                    return Container(
                      margin: EdgeInsets.only(
                        top: height * 0.07,
                        bottom: height * 0.02,
                      ),
                      child: TwoButtonSwitch(
                        activeSide: value.selectedLogInType == LogInType.signUp
                            ? HorizontalDirection.left
                            : HorizontalDirection.right,
                        onChanged: (direction) {
                          value.setLogInType(
                            direction == HorizontalDirection.left
                                ? LogInType.signUp
                                : LogInType.signIn,
                          );
                        },
                        leftButtonText: EnglishText.signUp,
                        rightButtonText: EnglishText.signIn,
                      ),
                    );
                  },
                ),

                Consumer<CredentialController>(
                  builder: (
                    BuildContext context,
                    CredentialController value,
                    Widget? child,
                  ) {
                    return LogInViewChooser(
                      logInType: value.selectedLogInType,
                    );
                  },
                ),

                Column(
                  children: [
                    Consumer<CredentialController>(
                      builder: (
                        BuildContext context,
                        CredentialController value,
                        Widget? child,
                      ) {
                        return RectangleButton(
                          isActive: value.selectedLogInType == LogInType.signIn ? value.isSignInValid: value.isSignUpValid,
                          text: EnglishText.continueText,
                          onTap: () {
                            CredentialController value =
                                Provider.of<CredentialController>(context,
                                    listen: false);

                            switch (value.selectedLogInType) {
                              case LogInType.signIn:
                                {
                                  value.signIn();
                                  break;
                                }
                              case LogInType.signUp:
                                {
                                  value.signUp();
                                  break;
                                }
                            }

                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (context) => const GetNamePage(),
                              ),
                            );
                          },
                        );
                      },
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
