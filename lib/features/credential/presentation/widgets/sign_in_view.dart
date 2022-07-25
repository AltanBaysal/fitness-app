import 'package:fitness_app/core/constants/colors_constants.dart';
import 'package:fitness_app/core/constants/text_constants.dart';
import 'package:flutter/material.dart';

class SignInView extends StatelessWidget {
  const SignInView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    return Expanded(
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
                margin:
                    EdgeInsets.only(top: height * 0.03, bottom: height * 0.015),
                child: const Text(EnglishText.password),
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
          SizedBox(height: height*0.02,),
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
