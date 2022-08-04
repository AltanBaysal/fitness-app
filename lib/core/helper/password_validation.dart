
import 'package:fitness_app/core/constants/text_constants.dart';

String? passwordValidator(String? password1) {
  RegExp regex = RegExp(r'^(?=.*?[A-Z])(?=.*?[a-z])(?=.*?[0-9])(?=.*?[!@#\$&*~]).{8,}$');
  if (password1 == null || password1.isEmpty) {
    return EnglishText.thisFieldCannotBeLeftBlank;
  }
  
  if (regex.hasMatch(password1)) {
    return EnglishText.pleaseEnterValidPassword;
  }

  return null;
}
