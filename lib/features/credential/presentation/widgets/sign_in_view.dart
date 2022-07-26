import 'package:fitness_app/core/constants/colors_constants.dart';
import 'package:fitness_app/core/constants/text_constants.dart';
import 'package:fitness_app/core/helper/email_validation.dart';
import 'package:fitness_app/core/helper/password_validation.dart';
import 'package:fitness_app/features/credential/presentation/provider/credential_controller.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class SignInView extends StatelessWidget {
  const SignInView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    return SizedBox(
      height: height * 0.65,
      child: Column(
        children: [
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                margin:
                    EdgeInsets.only(top: height * 0.03, bottom: height * 0.015),
                child: const Text(EnglishText.email),
              ),

              SizedBox(
                height: height*0.09,
                child: Consumer<CredentialController>(
                  builder: (
                    BuildContext context,
                    CredentialController value,
                    Widget? child,
                  ) {
                    return TextFormField(
                      controller: value.emailSignInTextController,
                      autovalidateMode: AutovalidateMode.onUserInteraction,
                      validator: emailValidator,
                      decoration: const InputDecoration(
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.all(Radius.circular(13)),
                          borderSide: BorderSide(
                            color: CustomColors.lightGrey,
                            width: 0.01,
                          ),
                        ),
                      ),
                    );
                  },
                ),
              ),

            ],
          ),

          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                margin:
                    EdgeInsets.only(top: height * 0.03, bottom: height * 0.015),
                child: const Text(EnglishText.password),
              ),

              SizedBox(
                height: height*0.09,
                child: Consumer<CredentialController>(
                  builder: (
                    BuildContext context,
                    CredentialController value,
                    Widget? child,
                  ) {
                    return TextFormField(
                      controller: value.passwordSignInTextController,
                      autovalidateMode: AutovalidateMode.onUserInteraction, //? bunu alway kullanmak zorunda kaldım :(
                      validator: passwordValidator,
                      decoration: const InputDecoration(
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.all(Radius.circular(13)),
                          borderSide: BorderSide(
                            color: CustomColors.lightGrey,
                            width: 0.01,
                          ),
                        ),
                      ),
                    );
                  },
                ),
              ),
            ],
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
