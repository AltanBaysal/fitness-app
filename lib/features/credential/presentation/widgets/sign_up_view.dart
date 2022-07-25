import 'package:fitness_app/core/constants/text_constants.dart';
import 'package:fitness_app/features/credential/presentation/widgets/terms_of_use_text.dart';
import 'package:flutter/material.dart';
import '../../../../core/constants/colors_constants.dart';

class SignUpView extends StatelessWidget {
  const SignUpView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    return Expanded(
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
                  const SizedBox(
                    height: 50,
                    child: TextField(
                      decoration: InputDecoration(
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.all(Radius.circular(13)),
                          borderSide: BorderSide(
                            color: CustomColors.lightGrey,
                            width: 0.01,
                          ),
                        ),
                      ),
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
                  const SizedBox(
                    height: 50,
                    child: TextField(
                      decoration: InputDecoration(
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.all(Radius.circular(13)),
                          borderSide: BorderSide(
                            color: CustomColors.lightGrey,
                            width: 0.01,
                          ),
                        ),
                      ),
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
                  const SizedBox(
                    height: 50,
                    child: TextField(
                      decoration: InputDecoration(
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.all(Radius.circular(13)),
                          borderSide: BorderSide(
                            color: CustomColors.lightGrey,
                            width: 0.01,
                          ),
                        ),
                      ),
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
