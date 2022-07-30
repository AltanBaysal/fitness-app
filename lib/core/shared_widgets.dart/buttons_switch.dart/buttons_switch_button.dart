
import 'package:flutter/material.dart';

import '../../constants/colors_constants.dart';

class ButtonsSwitchButton extends StatelessWidget {
  const ButtonsSwitchButton({
    Key? key,
    required this.isActive,
    required this.onTap,
    required this.text,
  }) : super(key: key);

  final bool isActive;
  final void Function() onTap;
  final String text;

  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    return Expanded(
      child: GestureDetector(
        onTap: () {
          onTap();
        },
        child: Card(
          elevation: isActive ? 9 : 0,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(15),
          ),
          color: isActive ? Colors.white : CustomColors.lightGrey,
          child: Center(
            child: Text(
              text,
              style: TextStyle(
                color: isActive ? CustomColors.lightBlack : Colors.white,
                fontSize: width * 0.045,
                fontWeight: FontWeight.w500,
              ),
            ),
          ),
        ),
      ),
    );
  }
}
