import 'package:fitness_app/core/constants/text_constants.dart';
import 'package:fitness_app/features/user_information/presentation/widgets/female_card.dart';
import 'package:fitness_app/features/user_information/presentation/widgets/male_card.dart';
import 'package:flutter/material.dart';


class GetSexInfoView extends StatelessWidget {
  const GetSexInfoView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    double height = MediaQuery.of(context).size.height;
    return Expanded(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          Container(
            margin: EdgeInsets.only(top: height * 0.05, bottom: height * 0.11),
            child: Text(
              EnglishText.whatIsYourSex,
              style: TextStyle(fontSize: width * 0.06),
            ),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: const [
             FemaleCard(),
              
              MaleCard(),
            ],
          ),
        ],
      ),
    );
  }
}
