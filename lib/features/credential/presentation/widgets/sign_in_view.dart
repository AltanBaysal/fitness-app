import 'package:fitness_app/core/constants/text_constants.dart';
import 'package:fitness_app/core/helper/email_validation.dart';
import 'package:fitness_app/core/helper/password_validation.dart';
import 'package:fitness_app/features/credential/presentation/provider/credential_controller.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import 'custom_credential_text_form_field.dart';

class SignInView extends StatelessWidget {
  const SignInView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    return SizedBox(
      height: height * 0.65,
      child: Column(
        children: [

          Consumer<CredentialController>(
            builder: (
              BuildContext context,
              CredentialController value,
              Widget? child,
            ) {
              return CustomCredentialTextFormField(
                title: EnglishText.email,
                controller: value.emailSignInTextController,
                validator: emailValidator,
              );
            },
          ),

          Consumer<CredentialController>(
            builder: (
              BuildContext context,
              CredentialController value,
              Widget? child,
            ) {
              return CustomCredentialTextFormField(
                title: EnglishText.password,
                controller: value.passwordSignInTextController,
                validator: passwordValidator,
              );
            },
          ),

          SizedBox(
            height: height * 0.02,
          ),
          const Text(
            EnglishText.forgotPassword,
            style: TextStyle(
              color: Colors.grey,
              decoration: TextDecoration.underline,
            ),
          ),
        ],
      ),
    );
  }
}
