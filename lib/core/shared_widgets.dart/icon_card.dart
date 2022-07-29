import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class IconCard extends StatelessWidget {
  const IconCard({
    Key? key,
    required this.size,
    required this.icon,
    required this.isActive,
    required this.onTap,
  }) : super(key: key);

  final String icon;
  final double size;
  final bool isActive;
  final VoidCallback onTap; //! TODO

  Color? get iconColor => isActive ? null : Colors.grey;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap, //! TODO
      child: Card(
        elevation: 9,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(15),
        ),
        child: Container(
          padding: EdgeInsets.all(size * 0.2),
          height: size,
          width: size,
          child: Center(
            child: SvgPicture.asset(
              icon,
              fit: BoxFit.contain,
              color: iconColor,
            ),
          ),
        ),
      ),
    );
  }
}
