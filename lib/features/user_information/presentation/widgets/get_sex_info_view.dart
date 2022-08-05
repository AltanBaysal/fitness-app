import 'package:fitness_app/core/constants/text_constants.dart';
import 'package:fitness_app/core/enums/sex.dart';
import 'package:fitness_app/features/user_information/presentation/provider/user_information_controller.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import '../../../../core/constants/icons_constants.dart';
import '../../../../core/shared_widgets.dart/icon_card.dart';

//? parçala
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
                  Consumer<UserInformationController>(
                    builder: (
                      BuildContext context,
                      UserInformationController value,
                      Widget? child,
                    ) {
                      return IconCard(
                        size: Size.square(width * 0.3),
                        icon: CustomIcons.femaleGender,
                        isActive: value.selectedSex == Sex.female,
                        onTap: () {
                          value.selectSex(Sex.female);
                        },
                      );
                    },
                  ),
                  const SizedBox(height: 10),
                  const Text(
                    EnglishText.woman,
                    style: TextStyle(
                      color: Colors.grey,
                    ),
                  ),
                ],
              ),
              
              Column(
                children: [
                  Consumer<UserInformationController>(
                    builder: (
                      BuildContext context,
                      UserInformationController value,
                      Widget? child,
                    ) {
                      return IconCard(
                        size:Size.square(width * 0.3),
                        icon: CustomIcons.maleGender,
                        isActive: value.selectedSex == Sex.male,
                        onTap: () {
                          value.selectSex(Sex.male);
                        },
                      );
                    },
                  ),
                  
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
