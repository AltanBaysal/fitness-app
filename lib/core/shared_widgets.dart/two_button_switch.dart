import 'package:fitness_app/core/constants/colors_constants.dart';
import 'package:flutter/material.dart';

//? isim
class TwoButtonSwitch extends StatelessWidget {
  const TwoButtonSwitch({
    Key? key,
    required this.buttonTexts,
    required this.activeIndex,
    required this.onChanged,
  }) : super(key: key);

  final int activeIndex;
  final List<String> buttonTexts;
  final void Function(int index) onChanged;

  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    return Container(
      padding: const EdgeInsets.all(0.1),
      decoration: const BoxDecoration(
        borderRadius: BorderRadius.all(Radius.circular(20)),
        color: CustomColors.lightGrey,
      ),
      height: height * 0.07,
      child: Row(
        children: buttonTexts
            .map(
              (e) => _Button(
                isActive: activeIndex == buttonTexts.indexOf(e),
                text: e,
                onTap: () {
                  onChanged(
                    buttonTexts.indexOf(e),
                  );
                },
              ),
            )
            .toList(),
      ),
    );
  }
}

//? bunu kullanmak mantıklı mı ?
class _Button extends StatelessWidget {
  const _Button({
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
