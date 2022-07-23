import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class GenderCard extends StatelessWidget {
  const GenderCard({
    Key? key,
    required this.size,
    required this.icon,
    required this.isActive,
    required this.onTap,
  }) : super(key: key);

  final String icon;
  final double size;
  final bool isActive;
  final Function onTap;


  Color? get iconColor => isActive ? null : Colors.grey;
  Function get onTapFunction => isActive ? onTap : () {};


  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: (){
        onTapFunction();
      },
      child: Card(
        elevation: 9,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(15),
        ),
        child: Container(
          padding: EdgeInsets.all(size*0.2),
          height: size,
          width: size,
          child: Center(
            child: SvgPicture.asset(icon,fit:BoxFit.contain,color: iconColor,),
          ),
        ),
      ),
    );
  }
}