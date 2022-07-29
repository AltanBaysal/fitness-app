import 'package:fitness_app/core/constants/colors_constants.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class RectangleIconButton extends StatelessWidget {
  const RectangleIconButton({
    Key? key,
    required this.onTap,
    required this.icon,
    this.isActive = true,
    this.color = CustomColors.darkBlue,
    this.passiveColor = Colors.grey,
  }) : super(key: key);

  final String icon;
  final VoidCallback onTap;
  final bool isActive;
  final Color color;
  final Color passiveColor;

  Color get containerColor => isActive ? color : passiveColor;
  VoidCallback? get onTapFunction => isActive ? onTap : null;

  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    return GestureDetector(
      onTap: onTapFunction,
      child: Card(
        elevation: 9,
        shape: const RoundedRectangleBorder(
          borderRadius: BorderRadius.all(Radius.circular(7)),
        ),
        child: SizedBox(
          height: height * 0.07,
          child: Center(
            child: SizedBox(
              height: height * 0.04,
              width: height * 0.04,
              child: SvgPicture.asset(icon, fit: BoxFit.cover),
            ),
          ),
        ),
      ),
    );
  }
}
