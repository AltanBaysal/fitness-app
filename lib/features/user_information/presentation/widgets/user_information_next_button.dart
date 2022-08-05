import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../../../../core/constants/text_constants.dart';
import '../../../../core/enums/body_info_type.dart';
import '../../../../core/shared_widgets.dart/rectangle_button.dart';
import '../../../home/home_page.dart';
import '../provider/user_information_controller.dart';

class UserInformationNextButton extends StatelessWidget {
  const UserInformationNextButton({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return RectangleButton(
      child: const Text(EnglishText.next),
      onTap: () {
        //! geliştirilebilir
        UserInformationController value =
            Provider.of<UserInformationController>(
          context,
          listen: false,
        );

        if (value.activeBodyInfoPage == BodyInfoType.values.last) {
          value.setUserInfos();
          Navigator.push(
            context,
            MaterialPageRoute(
              builder: (context) => const HomePage(),
            ),
          );
        } else {
          value.setActiveBodyInfoPage(
              BodyInfoType.values[value.activeBodyInfoPage.index + 1]);
        }
      },
    );
  }
}
