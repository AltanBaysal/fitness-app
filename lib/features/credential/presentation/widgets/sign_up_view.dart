import 'package:fitness_app/core/constants/text_constants.dart';
import 'package:fitness_app/core/helper/email_validation.dart';
import 'package:fitness_app/features/credential/presentation/provider/credential_controller.dart';
import 'package:fitness_app/features/credential/presentation/widgets/custom_credential_text_form_field.dart';
import 'package:fitness_app/features/credential/presentation/widgets/terms_of_use_text.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import '../../../../core/helper/password_validation.dart';


class SignUpView extends StatelessWidget {
  const SignUpView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    return SizedBox(
      height: height * 0.65,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Column(
            children: [

              Consumer<CredentialController>(
                builder: (
                  BuildContext context,
                  CredentialController value,
                  Widget? child,
                ) {
                  return CustomCredentialTextFormField(
                    title: EnglishText.email,
                    controller: value.emailSignUpTextController,
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
                    title: EnglishText.createPassword,
                    controller: value.passwordSignUpTextController,
                    validator: passwordValidator,
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
                    title: EnglishText.rewritePassword,
                    validator:(text){
                      //? bunun burda olması doğru mu ?
                      if(text != value.passwordSignUpTextController.text){
                        return EnglishText.passwordMustBeConfirmed;
                      }
                      return null;
                    },
                  );
                },
              ),
            ],
          ),
          const TermsOfUseText(),
        ],
      ),
    );
  }
}
