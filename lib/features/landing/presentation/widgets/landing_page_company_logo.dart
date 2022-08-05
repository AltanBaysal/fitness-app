
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import '../../../../core/constants/icons_constants.dart';

class LandingPageCompanyLogo extends StatelessWidget {
  const LandingPageCompanyLogo({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        SizedBox(
          height: height * 0.08,
          width: height * 0.08,
          child: SvgPicture.asset(CustomIcons.companyLogo),
        ),
      ],
    );
  }
}
