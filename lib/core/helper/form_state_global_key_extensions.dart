
//? adı ve yeri tam olmadı sanki



import 'package:flutter/cupertino.dart';

extension FormStateGlobalKeyExtensions on GlobalKey<FormState>{
  bool get isValid{
    if(currentState == null){
      return false;
    }
    return currentState!.validate();
  }
}