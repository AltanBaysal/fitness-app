import 'package:fitness_app/core/enums/log_in_type.dart';
import 'package:fitness_app/features/credential/presentation/provider/credential_controller.dart';
import 'package:fitness_app/features/credential/presentation/widgets/sign_in_view.dart';
import 'package:fitness_app/features/credential/presentation/widgets/sign_up_view.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class LogInViewChooser extends StatelessWidget {
  const LogInViewChooser({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Consumer<CredentialController>(
      builder: (
        BuildContext context,
        CredentialController value,
        Widget? child,
      ) {
        switch (value.selectedLogInType) {
          case LogInType.signIn:
            return const SignInView();
          case LogInType.signUp:
            return const SignUpView();
        }
      },
    );
  }
}
