import 'package:fitness_app/features/user_information/presentation/widgets/custom_number_picker.dart';
import 'package:flutter/material.dart';

class GetLenghtInfo extends StatelessWidget {
  const GetLenghtInfo({Key? key}) : super(key: key);

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
              "How much is your lenght?",
              style: TextStyle(fontSize: width * 0.06),
            ),
          ),
          CustomNumberPicker(
            minNum: 50,
            maxNum: 251,
            onChanged: (i) {},
          ),
        ],
      ),
    );
  }
}
