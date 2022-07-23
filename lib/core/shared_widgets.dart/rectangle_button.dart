import 'package:fitness_app/core/constants/colors_constants.dart';
import 'package:flutter/material.dart';

//? isimlendirme
class RectangleButton extends StatelessWidget {
  const RectangleButton({
    Key? key,
    required this.onTap,
    this.isActive = true, //? bu kullanımda sıkıntı var mı ?
    this.text,
    this.color = CustomColors.darkBlue, //? bu kullanımda sıkıntı var mı ?
    this.passiveColor = Colors.grey,
  }) : super(key: key);

  final String? text;
  final Function onTap;
  final bool isActive;
  final Color color;
  final Color passiveColor; //? isimlendirme

  Color get containerColor => isActive ? color : passiveColor;
  Function get onTapFunction =>
      isActive ? onTap : () {}; //? ikinci doğru kullanım mı?

  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;

    //? buraya parçalamam gerekir mi?
    return GestureDetector(
      onTap: () {
        onTapFunction();
      },
      child: Container(
        height: height * 0.07,
        decoration: BoxDecoration(
          borderRadius: const BorderRadius.all(Radius.circular(7)),
          color: containerColor,
        ),
        child: Visibility(
          visible: text != null,
          child: Center(
            child: Text(
              text!,
              style: TextStyle(
                color: Colors.white,
                fontSize: height*0.023,
              ),
            ),
          ),
        ),
      ),
    );
  }
}
