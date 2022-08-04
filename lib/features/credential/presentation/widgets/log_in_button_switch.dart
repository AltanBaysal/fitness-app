import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../../../../core/constants/text_constants.dart';
import '../../../../core/enums/log_in_type.dart';
import '../../../../core/shared_widgets.dart/buttons_switch.dart/buttons_switch.dart';
import '../provider/credential_controller.dart';

class LogInButtonSwitch extends StatelessWidget {
  const LogInButtonSwitch({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    return Consumer<CredentialController>(
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
          child: ButtonsSwitch(
            activeIndex: value.selectedLogInType.index,
            onChanged: (index) {
              value.setLogInType(
                value.selectedLogInType = LogInType.values[index],
              );
            },
            buttonTexts: const [EnglishText.signUp, EnglishText.signIn],
          ),
        );
      },
    );
  }
}
