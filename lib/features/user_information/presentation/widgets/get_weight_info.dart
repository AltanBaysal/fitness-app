

import 'package:fitness_app/core/constants/text_constants.dart';
import 'package:fitness_app/features/user_information/presentation/provider/user_information_controller.dart';
import 'package:fitness_app/features/user_information/presentation/widgets/custom_number_picker.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class GetWeightInfo extends StatelessWidget {
  const GetWeightInfo({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    double height = MediaQuery.of(context).size.height;
    return Expanded(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          Container(
            margin: EdgeInsets.only(
              top: height * 0.05,
              bottom: height * 0.11,
            ),
            child: Text(
             EnglishText.howMuchIsYourWeight,
              style: TextStyle(fontSize: width * 0.06),
            ),
          ),
          CustomNumberPicker(
            minNum: 20,
            maxNum: 500,
            onChanged: (weight) {
              Provider.of<UserInformationController>(
                context,
                listen: false,
              ).selectedWeight = weight;
            },
          ),
        ],
      ),
    );
  }
}