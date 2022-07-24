import 'package:dots_indicator/dots_indicator.dart';
import 'package:flutter/material.dart';

import '../../../../core/constants/colors_constants.dart';

class InfoPageDotsIndicator extends StatelessWidget {
  const InfoPageDotsIndicator({
    Key? key,
    required this.position,
  }) : super(key: key);

  final double position;

  @override
  Widget build(BuildContext context) {
    return DotsIndicator(
      dotsCount: 4,
      position: position,
      decorator: const DotsDecorator(
        size: Size.square(7),
        activeSize: Size.square(7),
        spacing: EdgeInsets.all(4),
        color: CustomColors.lightGrey,
        activeColor: Colors.grey,
      ),
    );
  }
}
