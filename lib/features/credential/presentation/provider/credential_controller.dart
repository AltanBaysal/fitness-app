import 'package:fitness_app/core/constants/text_constants.dart';
import 'package:fitness_app/core/enums/log_in_type.dart';
import 'package:fitness_app/core/helper/password_validation.dart';
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
  final TextEditingController passwordCheckSignUpTextController =
      TextEditingController();

  void setLogInType(LogInType logInType) {
    selectedLogInType = logInType;
    notifyListeners();
  }

  String? secondPasswordValidator(String? password) {
    String? result = passwordValidator(password);
    if (result != null) {
      return result;
    }

    if (password != passwordSignUpTextController.text) {
      return EnglishText.passwordMustBeConfirmed;
    }

    return null;
  }

  bool get isSignInValid {
    return (emailValidator(emailSignInTextController.text) == null &&
        passwordValidator(passwordSignInTextController.text) == null);
  }

  bool get isSignUpValid {
    return (
        emailValidator(emailSignUpTextController.text) == null &&
        passwordValidator(passwordSignUpTextController.text) == null &&
        secondPasswordValidator(passwordCheckSignUpTextController.text) ==null);
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
