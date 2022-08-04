import 'package:fitness_app/core/constants/text_constants.dart';
import 'package:fitness_app/features/user_information/presentation/pages/get_body_info_page.dart';
import 'package:fitness_app/features/user_information/presentation/provider/user_information_controller.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import '../../../../core/shared_widgets.dart/custom_back_button.dart';
import '../../../../core/shared_widgets.dart/rectangle_button.dart';


//? PARÇALA
class GetNamePage extends StatelessWidget {
  const GetNamePage({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    double height = MediaQuery.of(context).size.height;

    return Scaffold(
      body: Container(
        margin: const EdgeInsets.symmetric(vertical: 30, horizontal: 20),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Row(
              children: [
                CustomBackButton(
                  mainContext: context,
                  size: width * 0.05,
                )
              ],
            ),
            SizedBox(
              height: height * 0.18,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    EnglishText.yourNameWithQuestionMark,
                    style: TextStyle(fontSize: width * 0.08),
                  ),
                  Consumer<UserInformationController>(
                    builder: (
                      BuildContext context,
                      UserInformationController userInformationController,
                      Widget? child,
                    ) {
                      return TextField(
                        controller:
                            userInformationController.getNameTextController,
                        decoration: const InputDecoration(
                          label: Text(EnglishText.yourName),
                        ),
                      );
                    },
                  ),
                ],
              ),
            ),
            RectangleButton(
              text: EnglishText.continueText,
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => const GetBodyInfoPage(),
                  ),
                );
              },
            ),
          ],
        ),
      ),
    );
  }
}
