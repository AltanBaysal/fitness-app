import 'package:fitness_app/core/constants/colors_constants.dart';
import 'package:flutter/material.dart';

import 'buttons_switch_button.dart';

class ButtonsSwitch extends StatelessWidget {
  const ButtonsSwitch({
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
              (e) => ButtonsSwitchButton(
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
