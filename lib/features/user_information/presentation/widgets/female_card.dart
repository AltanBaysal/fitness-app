import 'package:fitness_app/features/user_information/presentation/provider/user_information_controller.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../../../../core/constants/icons_constants.dart';
import '../../../../core/constants/text_constants.dart';
import '../../../../core/enums/sex.dart';
import '../../../../core/shared_widgets.dart/icon_card.dart';

class FemaleCard extends StatelessWidget {
  const FemaleCard({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    return Column(
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
    );
  }
}
