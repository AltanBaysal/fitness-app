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
    this.elevation,
  }) : super(key: key);

  final Color color;
  final bool isActive;
  final VoidCallback onTap;
  final Color passiveColor;
  final Widget child;
  final double? elevation;
 
  Color get containerColor => isActive ? color : passiveColor;

  VoidCallback? get onTapFunction => isActive ? onTap : null;

  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;

    return GestureDetector(
      onTap: onTapFunction,
      child: Card(
        color: containerColor,
        elevation: elevation,
        shape: const RoundedRectangleBorder(
          borderRadius: BorderRadius.all(Radius.circular(7)),
        ),
        child: SizedBox(
          height: height * 0.07,
          child: Center(
            child: child,
          ),
        ),
      ),
    );
  }
}
