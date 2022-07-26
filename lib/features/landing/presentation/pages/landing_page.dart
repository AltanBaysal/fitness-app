import 'package:fitness_app/core/constants/colors_constants.dart';
import 'package:fitness_app/core/constants/icons_constants.dart';
import 'package:fitness_app/core/constants/text_constants.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:provider/provider.dart';
import '../../../../core/shared_widgets.dart/rectangle_button.dart';
import '../../../../core/shared_widgets.dart/rectangle_icon_button.dart';
import '../../../credential/presentation/pages/credential_page.dart';
import '../../../user_information/presentation/pages/get_name_page.dart';
import '../providers/landing_page_provider.dart';

class LandingPage extends StatelessWidget {
  const LandingPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    return Scaffold(
      body: Container(
        margin: const EdgeInsets.symmetric(vertical: 30, horizontal: 20),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                SizedBox(
                  height: height * 0.08,
                  width: height * 0.08,
                  child: SvgPicture.asset(CustomIcons.companyLogo),
                ),
              ],
            ),

            SizedBox(height: height * 0.05),
            Text(
              EnglishText.loremIpsum1,
              style: TextStyle(
                fontSize: height * 0.02,
              ),
              textAlign: TextAlign.center,
            ),
            SizedBox(height: height * 0.1),

            RectangleIconButton(
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => const CredentialPage(),
                  ),
                );
              },
              icon: CustomIcons.email,
              color: Colors.white,
            ),

            SizedBox(height: height * 0.05),
            RectangleIconButton(
              onTap: () {
                Provider.of<LandingPageProvider>(context,listen: false).googleLogin();
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => const GetNamePage(),
                  ),
                );
              },
              icon: CustomIcons.google,
              color: Colors.white,
            ),

            SizedBox(height: height * 0.05),
            RectangleIconButton(
              onTap: () {},
              icon: CustomIcons.facebook,
              color: Colors.white,
            ),
            
            SizedBox(height: height * 0.08),
            RectangleButton(
              onTap: () {},
              text: EnglishText.continueWithoutSigningUp,
              color: CustomColors.lightBlack,
            ),
          ],
        ),
      ),
    );
  }
}
