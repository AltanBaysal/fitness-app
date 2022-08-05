import 'package:flutter/material.dart';
import '../../../../core/constants/icons_constants.dart';
import '../../../../core/shared_widgets.dart/rectangle_button.dart';
import '../../../../core/shared_widgets.dart/svg_covered_sized_box.dart';

class FacebookLoginButton extends StatelessWidget {
  const FacebookLoginButton({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    return RectangleButton(
      onTap: () {},
      color: Colors.white,
      child: SvgCoveredSizedBox(
        size: Size.square(height * 0.5),
        svgAssets: CustomIcons.facebook,
      ),
    );
  }
}
