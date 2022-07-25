





import 'package:fitness_app/core/enums/log_in_type.dart';
import 'package:fitness_app/features/credential/presentation/widgets/sign_in_view.dart';
import 'package:fitness_app/features/credential/presentation/widgets/sign_up_view.dart';
import 'package:flutter/material.dart';

class LogInViewChooser extends StatelessWidget {
  const LogInViewChooser({
    Key? key,
    required this.logInType,
  }) : super(key: key);

  final LogInType logInType;

  @override
  Widget build(BuildContext context) {
    switch (logInType) {
      case LogInType.signIn: return const SignInView();
      case LogInType.signUp: return const SignUpView();
    }
  }
}