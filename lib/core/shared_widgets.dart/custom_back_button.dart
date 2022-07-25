import 'package:fitness_app/core/constants/colors_constants.dart';
import 'package:fitness_app/core/constants/icons_constants.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class CustomBackButton extends StatelessWidget {
  const CustomBackButton({
    Key? key,
    required this.mainContext,
    required this.size,
  }) : super(key: key);

  final BuildContext mainContext;
  final double size;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.pop(mainContext);
      },
      child: SizedBox(
        height: size,
        width: size,
        child: SvgPicture.asset(
          CustomIcons.backIcon,
          fit: BoxFit.cover,
          color: CustomColors.lightGrey,
        ),
      ),
    );
  }
}
