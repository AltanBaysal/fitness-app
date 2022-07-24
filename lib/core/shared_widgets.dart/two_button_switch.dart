import 'package:fitness_app/core/constants/colors_constants.dart';
import 'package:fitness_app/core/enums/horizontal_direction_enum.dart';
import 'package:flutter/material.dart';

//? isim
class TwoButtonSwitch extends StatelessWidget {
  const TwoButtonSwitch({
    Key? key,
    this.leftButtonText = "",
    this.rightButtonText = "",
    required this.activeSide,
    required this.onChanged,
  }) : super(key: key);

  final HorizontalDirection activeSide;
  final String leftButtonText;
  final String rightButtonText;
  final void Function(HorizontalDirection) onChanged;

  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    return Container(
      padding: const EdgeInsets.all(1),
      decoration: const BoxDecoration(
        borderRadius: BorderRadius.all(Radius.circular(20)),
        color: CustomColors.lightGrey,
      ),
      height: height * 0.07,
      child: Row(
        children: [
          _Button(
            isActive: activeSide == HorizontalDirection.left,
            buttonText: leftButtonText,
            onTap: (){onChanged(HorizontalDirection.left);},
          ),
          _Button(
            isActive: activeSide == HorizontalDirection.right,
            buttonText: rightButtonText,
            onTap: (){onChanged(HorizontalDirection.right);},
          ),
        ],
      ),
    );
  }
}


//? bunu kullanmak mantıklı mı ?
class _Button extends StatelessWidget {
  const _Button({
    Key? key,
    required this.isActive,
    required this.buttonText,
    required this.onTap,
  }) : super(key: key);

  final bool isActive;
  final String buttonText;
  final void Function() onTap; 

  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    return Expanded(
      child: GestureDetector(
        onTap: () {onTap();},
        child: Card(
          elevation: isActive ? 9 : 0,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(15),
          ),
          color: isActive ? Colors.white : CustomColors.lightGrey,
          child: Center(
            child: Text(
              buttonText,
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
