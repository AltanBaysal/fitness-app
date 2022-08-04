import 'package:fitness_app/core/constants/colors_constants.dart';
import 'package:flutter/material.dart';

class RectangleButton extends StatelessWidget {
  const RectangleButton({
    Key? key,
    required this.onTap,
    required this.child,
    this.isActive = true,
    this.color = CustomColors.darkBlue,
    this.passiveColor = Colors.grey,
  }) : super(key: key);

  final Color color;
  final bool isActive;
  final VoidCallback onTap;
  final Color passiveColor;
  final Widget child;

  Color get containerColor => isActive ? color : passiveColor;

  VoidCallback? get onTapFunction => isActive ? onTap : null;

  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;

    return GestureDetector(
      onTap: onTapFunction,
      child: Container(
        height: height * 0.07,
        decoration: BoxDecoration(
          borderRadius: const BorderRadius.all(Radius.circular(7)),
          color: containerColor,
        ),
        child: Center(
          child: child,
        ),
      ),
    );
  }
}



//! işin bitince sil
/*
Text(
            text,
            style: TextStyle(
              color: Colors.white,
              fontSize: height * 0.023,
            ),
          ),


SizedBox(
              height: height * 0.04,
              width: height * 0.04,
              child: SvgPicture.asset(icon, fit: BoxFit.cover),
            ),
*/