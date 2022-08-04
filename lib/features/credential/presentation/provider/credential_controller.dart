import 'package:fitness_app/core/helper/form_state_global_key_extensions.dart';
import 'package:fitness_app/features/credential/enums/log_in_type.dart';
import 'package:flutter/material.dart';
import '../../domain/usecases/email_auth.dart';

class CredentialController with ChangeNotifier {
  LogInType selectedLogInType = LogInType.signUp;

  //? bunları böyle açıkta saklamaktan daha iyi bir yöntem olmalı
  //? hem keyleri hem controllerı tutmak çokta mantıklı değil gibi
  GlobalKey<FormState> emailSignInFormFieldKey = GlobalKey<FormState>();
  GlobalKey<FormState> passwordSignInFormFieldKey = GlobalKey<FormState>();
  GlobalKey<FormState> emailSignUpFormFieldKey = GlobalKey<FormState>();
  GlobalKey<FormState> passwordSignUpFormFieldKey = GlobalKey<FormState>();
  GlobalKey<FormState> passwordCheckSignUpFormFieldKey = GlobalKey<FormState>();

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

  bool get isSignInValid =>
      emailSignInFormFieldKey.isValid && passwordSignInFormFieldKey.isValid;

  bool get isSignUpValid =>
      emailSignUpFormFieldKey.isValid &&
      passwordSignUpFormFieldKey.isValid &&
      passwordCheckSignUpFormFieldKey.isValid;

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
        emailSignUpTextController.text, passwordSignUpTextController.text);
  }
}
