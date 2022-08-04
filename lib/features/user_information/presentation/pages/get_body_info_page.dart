import 'package:fitness_app/core/constants/text_constants.dart';
import 'package:fitness_app/core/enums/body_info_type.dart';
import 'package:fitness_app/features/user_information/presentation/provider/user_information_controller.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:provider/provider.dart';
import '../../../../core/constants/colors_constants.dart';
import '../../../../core/constants/icons_constants.dart';
import '../../../../core/shared_widgets.dart/rectangle_button.dart';
import '../../../home/home_page.dart';
import '../widgets/body_info_view_chooser.dart';
import '../widgets/info_page_dots_indicator.dart';



//! PARÇALA
class GetBodyInfoPage extends StatelessWidget {
  const GetBodyInfoPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    return Scaffold(
      body: Container(
        margin: const EdgeInsets.symmetric(vertical: 30, horizontal: 20),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Row(
              children: [
                GestureDetector(
                  onTap: () {
                    UserInformationController value =
                        Provider.of<UserInformationController>(
                      context,
                      listen: false,
                    );

                    if (value.activeBodyInfoPage ==
                        BodyInfoType.values.first) {
                      Navigator.pop(context);
                    } else {
                      value.setActiveBodyInfoPage(BodyInfoType
                          .values[value.activeBodyInfoPage.index - 1]);
                    }
                  },
                  child: SizedBox(
                    height: width * 0.05,
                    width: width * 0.05,
                    child: SvgPicture.asset(
                      CustomIcons.backIcon,
                      fit: BoxFit.cover,
                      color: CustomColors.lightGrey,
                    ),
                  ),
                ),
              ],
            ),
            Consumer<UserInformationController>(
              builder: (
                BuildContext context,
                UserInformationController value,
                Widget? child,
              ) {
                return BodyInfoViewChooser(
                    activePage: value.activeBodyInfoPage);
              },
            ),
            Column(
              children: [
                RectangleButton(
                  text: EnglishText.next,
                  onTap: () {
                    UserInformationController value =
                        Provider.of<UserInformationController>(
                      context,
                      listen: false,
                    );

                    if (value.activeBodyInfoPage ==
                        BodyInfoType.values.last) {
                      value.setUserInfos();
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => const HomePage(),
                        ),
                      );
                    } else {
                      value.setActiveBodyInfoPage(BodyInfoType
                          .values[value.activeBodyInfoPage.index + 1]);
                    }
                  },
                ),

                const SizedBox(
                  height: 10,
                ),
                
                Consumer<UserInformationController>(
                  builder: (
                    BuildContext context,
                    UserInformationController value,
                    Widget? child,
                  ) {
                    return InfoPageDotsIndicator(
                        position: value.activeBodyInfoPage.index.toDouble());
                  },
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
