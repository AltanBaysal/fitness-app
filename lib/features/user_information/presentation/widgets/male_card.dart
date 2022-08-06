import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../../../../core/constants/icons_constants.dart';
import '../../../../core/constants/text_constants.dart';
import '../../../../core/enums/sex.dart';
import '../../../../core/shared_widgets.dart/icon_card.dart';
import '../provider/user_information_controller.dart';

class MaleCard extends StatelessWidget {
  const MaleCard({Key? key}) : super(key: key);

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
    );
  }
}
