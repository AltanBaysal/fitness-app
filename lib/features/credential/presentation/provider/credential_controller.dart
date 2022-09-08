import 'package:fitness_app/core/helper/password_validation.dart';
import 'package:fitness_app/features/credential/enums/log_in_type.dart';
import 'package:flutter/material.dart';
import '../../../../core/helper/email_validation.dart';
import '../../domain/usecases/email_auth.dart';

class CredentialController with ChangeNotifier {
  LogInType selectedLogInType = LogInType.signUp;

  final TextEditingController emailSignInTextController =
      TextEditingController();
  final TextEditingController passwordSignInTextController =
      TextEditingController();
  final TextEditingController emailSignUpTextController =
      TextEditingController();
  final TextEditingController passwordSignUpTextController =
      TextEditingController();

  bool get isContinueButtonActive {
    switch (selectedLogInType) {
      case LogInType.signIn:
        return isSignInValid;
      case LogInType.signUp:
        return isSignUpValid;
    }
  }

  //! çalışmıyor
  bool get isSignInValid {
    return emailValidator(emailSignInTextController.text) == null &&
        passwordValidator(passwordSignInTextController.text) == null;
  }

  bool get isSignUpValid =>
      false; /*
      emailSignUpFormFieldKey.isValid &&
      passwordSignUpFormFieldKey.isValid &&
      passwordCheckSignUpFormFieldKey.isValid;*/

  void setLogInType(LogInType logInType) {
    selectedLogInType = logInType;
    notifyListeners();
  }

  //?
  VoidCallback get selectedProcess {
    switch (selectedLogInType) {
      case LogInType.signIn:
        return signIn;
      case LogInType.signUp:
        return signUp;
    }
  }

  void signIn() {
    EmailAuthService emailAuthService = EmailAuthService();
    emailAuthService.signIn(
        emailSignInTextController.text, passwordSignInTextController.text);
  }

  void signUp() {
    EmailAuthService emailAuthService = EmailAuthService();
    emailAuthService.signUp(
      emailSignUpTextController.text,
      passwordSignUpTextController.text,
    );
  }
}
