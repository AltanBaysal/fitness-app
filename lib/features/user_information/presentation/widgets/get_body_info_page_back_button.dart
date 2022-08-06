import 'package:fitness_app/features/user_information/presentation/provider/user_information_controller.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:provider/provider.dart';
import '../../../../core/constants/colors_constants.dart';
import '../../../../core/constants/icons_constants.dart';
import '../../../../core/enums/body_info_type.dart';

class GetBodyInfoPageBackButton extends StatelessWidget {
  const GetBodyInfoPageBackButton({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    return Row(
      children: [
        GestureDetector(
          onTap: () {
            UserInformationController value =
                Provider.of<UserInformationController>(
              context,
              listen: false,
            );

            int activeIndex = value.activeBodyInfoPage.index;

            if (activeIndex == 0) {
              Navigator.pop(context);
            } else {
              value.setActiveBodyInfoPage(BodyInfoType.values[activeIndex - 1]);
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
    );
  }
}
