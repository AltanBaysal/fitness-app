import 'package:fitness_app/core/enums/log_in_type.dart';
import 'package:flutter/material.dart';
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
  final TextEditingController passwordCheckSignUpTextController =
      TextEditingController();

  bool get isContinueButtonActive {
    switch (selectedLogInType) {
      case LogInType.signIn:
        return isSignInValid;
      case LogInType.signUp:
        return isSignUpValid;
    }
  }

  bool get isSignInValid {
    return true; //! yap
  }

  bool get isSignUpValid {
    return false; //! yap
  }

  void setLogInType(LogInType logInType) {
    selectedLogInType = logInType;
    notifyListeners();
  }

  VoidCallback get selectedProcess {
    switch (selectedLogInType) {
      case LogInType.signIn: return signIn;
      case LogInType.signUp:return signUp;
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
        emailSignUpTextController.text, passwordSignUpTextController.text);
  }
}
