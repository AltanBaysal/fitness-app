import 'package:fitness_app/core/constants/text_constants.dart';

extension EmailValidator on String {
  bool get isValidEmail {
    return RegExp(
            r'^(([^<>()[\]\\.,;:\s@\"]+(\.[^<>()[\]\\.,;:\s@\"]+)*)|(\".+\"))@((\[[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\])|(([a-zA-Z\-0-9]+\.)+[a-zA-Z]{2,}))$')
        .hasMatch(this);
  }
}

//? bunun burda olmaması gerek gibi :(
String? emailValidator(String? email) {
  if (email == null || email.isEmpty) {
    return EnglishText.thisFieldCannotBeLeftBlank;
  }
  if (!email.isValidEmail) {
    return EnglishText.pleaseEnterValidEmail;
  }
  return null;
}
