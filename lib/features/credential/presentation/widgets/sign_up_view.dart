import 'package:fitness_app/core/constants/text_constants.dart';
import 'package:fitness_app/core/helper/email_validation.dart';
import 'package:fitness_app/features/credential/presentation/provider/credential_controller.dart';
import 'package:fitness_app/features/credential/presentation/widgets/terms_of_use_text.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import '../../../../core/constants/colors_constants.dart';
import '../../../../core/helper/password_validation.dart';

//! FIXME TextFormField'lar icin ortak widget yaz ve cikar
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
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Container(
                    margin: EdgeInsets.only(
                      top: height * 0.03,
                      bottom: height * 0.015,
                    ),
                    child: const Text(EnglishText.email),
                  ),
                  SizedBox(
                    height: height * 0.09,
                    child: Consumer<CredentialController>(
                      builder: (
                        BuildContext context,
                        CredentialController value,
                        Widget? child,
                      ) {
                        return TextFormField(
                          controller: value.emailSignUpTextController,
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
                    margin: EdgeInsets.only(
                      top: height * 0.03,
                      bottom: height * 0.015,
                    ),
                    child: const Text(EnglishText.createPassword),
                  ),
                  SizedBox(
                    height: height * 0.09,
                    child: Consumer<CredentialController>(
                      builder: (
                        BuildContext context,
                        CredentialController value,
                        Widget? child,
                      ) {
                        return TextFormField(
                          controller: value.passwordSignUpTextController,
                          autovalidateMode: AutovalidateMode.onUserInteraction,
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
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Container(
                    margin: EdgeInsets.only(
                      top: height * 0.03,
                      bottom: height * 0.015,
                    ),
                    child: const Text(EnglishText.reWritePassword),
                  ),
                  SizedBox(
                    height: height * 0.09,
                    child: Consumer<CredentialController>(
                      builder: (
                        BuildContext context,
                        CredentialController value,
                        Widget? child,
                      ) {
                        return TextFormField(
                          controller: value.passwordCheckSignUpTextController,
                          autovalidateMode: AutovalidateMode.onUserInteraction,
                          validator: value.secondPasswordValidator,
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
            ],
          ),
          const TermsOfUseText(),
        ],
      ),
    );
  }
}
