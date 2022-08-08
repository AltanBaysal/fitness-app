import 'package:flutter/material.dart';
import '../../../../core/constants/icons_constants.dart';
import '../../../../core/shared_widgets.dart/rectangle_button.dart';
import '../../../../core/shared_widgets.dart/svg_covered_sized_box.dart';
import '../../../credential/presentation/pages/credential_page.dart';


class EmailLoginButton extends StatelessWidget {
  const EmailLoginButton({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    return RectangleButton(
      onTap: () {
        Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) => const CredentialPage(),
          ),
        );
      },
      color: Colors.white,
      child: Padding(
        padding: EdgeInsets.all(height*0.015),
        child: SvgCoveredSizedBox(
          size: Size.square(height * 0.5),
          svgAssets: CustomIcons.email,
        ),
      ),
    );
  }
}
