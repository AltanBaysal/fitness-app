import 'package:flutter/material.dart';

//? isimlendirme
class RectangleButton extends StatelessWidget {
  const RectangleButton({
    Key? key,
    required this.onTap,
    this.isActive = true, //? bu kullanımda sıkıntı var mı ?
    this.text,
    this.color = Colors.blue, //? bu kullanımda sıkıntı var mı ?
    this.passiveColor = Colors.grey,
  }) : super(key: key);

  final String? text;
  final Function onTap;
  final bool isActive;
  final Color color;
  final Color passiveColor; //? isimlendirme


  Color get containerColor => isActive ? color: passiveColor;
  Function get inkWellOnTap => isActive ? onTap : (){}; //? ikinci doğru kullanım mı? 


  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: inkWellOnTap(),
      child: Container(
        color: containerColor,
        child: Visibility(
          visible: text != null,
          child: Center(
            child: Text(text!),
          ),
        ),
      ),
    );
  }
}
