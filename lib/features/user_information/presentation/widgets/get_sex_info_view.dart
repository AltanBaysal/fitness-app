import 'package:fitness_app/core/constants/text_constants.dart';
import 'package:flutter/material.dart';
import '../../../../core/constants/icons_constants.dart';
import '../../../../core/shared_widgets.dart/icon_card.dart';


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
            children: [

              Column(
                children: [
                  IconCard(
                      size: width * 0.3,
                      icon: CustomIcons.femaleGender,
                      isActive: true,
                      onTap: () {}),
                  const SizedBox(height: 10),
                  const Text(
                    EnglishText.woman,
                    style: TextStyle(color: Colors.grey),
                  ),
                ],
              ),
              
              Column(
                children: [
                  IconCard(
                      size: width * 0.3,
                      icon: CustomIcons.maleGender,
                      isActive: true,
                      onTap: () {}),
                  const SizedBox(height: 10),
                  const Text(
                    EnglishText.men,
                    style: TextStyle(color: Colors.grey),
                  ),
                ],
              ),
            ],
          ),
        ],
      ),
    );
  }
}
