import 'package:dots_indicator/dots_indicator.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../../../../core/constants/colors_constants.dart';
import '../provider/user_information_controller.dart';

class InfoPageDotsIndicator extends StatelessWidget {
  const InfoPageDotsIndicator({
    Key? key,
  }) : super(key: key);


  @override
  Widget build(BuildContext context) {
    return Consumer<UserInformationController>(
      builder: (
        BuildContext context,
        UserInformationController value,
        Widget? child,
      ) {
        return DotsIndicator(
          dotsCount: 4,
          position: value.activeBodyInfoPage.index.toDouble(),
          decorator: const DotsDecorator(
            size: Size.square(7),
            activeSize: Size.square(7),
            spacing: EdgeInsets.all(4),
            color: CustomColors.lightGrey,
            activeColor: Colors.grey,
          ),
        );
      },
    );
  }
}
