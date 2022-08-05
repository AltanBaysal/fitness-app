import 'package:flutter/cupertino.dart';
import '../../domain/usecases/google_sign_in_service.dart';


class LandingPageProvider extends ChangeNotifier{
  void googleLogin() async {
    GoogleSingInService googleSingInService = GoogleSingInService();
    googleSingInService.googleLogin();
  }
}