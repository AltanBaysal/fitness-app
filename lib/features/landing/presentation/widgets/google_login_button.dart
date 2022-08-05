import 'package:fitness_app/features/landing/presentation/providers/landing_page_provider.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import '../../../../core/constants/icons_constants.dart';
import '../../../../core/shared_widgets.dart/rectangle_button.dart';
import '../../../../core/shared_widgets.dart/svg_covered_sized_box.dart';
import '../../../user_information/presentation/pages/get_name_page.dart';


class GoogleLoginButton extends StatelessWidget {
  const GoogleLoginButton({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    return RectangleButton(
      onTap: () {
        Provider.of<LandingPageProvider>(context, listen: false).googleLogin();
        Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) => const GetNamePage(),
          ),
        );
      },
      color: Colors.white,
      child: SvgCoveredSizedBox(
        size: Size.square(height * 0.5),
        svgAssets: CustomIcons.google,
      ),
    );
  }
}
