
import 'package:fitness_app/core/enums/log_in_type.dart';
import 'package:flutter/material.dart';

class CredentialController with ChangeNotifier{
  LogInType selectedLogInType = LogInType.signUp;

  void setLogInType(LogInType logInType){
    selectedLogInType = logInType;
    notifyListeners();
  }
}