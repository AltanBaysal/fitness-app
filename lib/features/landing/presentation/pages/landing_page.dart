import 'package:fitness_app/features/landing/presentation/widgets/app_description.dart';
import 'package:fitness_app/features/landing/presentation/widgets/continue_without_signin_up_button.dart';
import 'package:fitness_app/features/landing/presentation/widgets/google_login_button.dart';
import 'package:fitness_app/features/landing/presentation/widgets/landing_page_company_logo.dart';
import 'package:flutter/material.dart';
import '../widgets/email_login_button.dart';
import '../widgets/facebook_login_button.dart';

//! PARÇALA
class LandingPage extends StatelessWidget {
  const LandingPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    return Scaffold(
      body: Container(
        margin: const EdgeInsets.symmetric(vertical: 30, horizontal: 20),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
            const LandingPageCompanyLogo(),

            SizedBox(height: height * 0.05),

            const AppDescription(),

            SizedBox(height: height * 0.1),

            const EmailLoginButton(),

            SizedBox(height: height * 0.05),

            const GoogleLoginButton(),

            SizedBox(height: height * 0.05),

            const FacebookLoginButton(),

            SizedBox(height: height * 0.08),

            const ContinueWithoutSigninUpButton(),
          ],
        ),
      ),
    );
  }
}
