import 'package:fitness_app/features/user_information/presentation/provider/user_information_controller.dart';
import 'package:fitness_app/features/user_information/presentation/widgets/get_age_info_view.dart';
import 'package:fitness_app/features/user_information/presentation/widgets/get_lenght_info_view.dart';
import 'package:fitness_app/features/user_information/presentation/widgets/get_sex_info_view.dart';
import 'package:fitness_app/features/user_information/presentation/widgets/get_weight_info.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import '../../../../core/enums/body_info_type.dart';

//? isimlendirme
class BodyInfoViewChooser extends StatelessWidget {
  const BodyInfoViewChooser({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Consumer<UserInformationController>(
      builder: (
        BuildContext context,
        UserInformationController value,
        Widget? child,
      ) {
        switch (value.activeBodyInfoPage) {
          case BodyInfoType.age:
            return const GetAgeInfoView();
          case BodyInfoType.lenght:
            return const GetLenghtInfoView();
          case BodyInfoType.sex:
            return const GetSexInfoView();
          case BodyInfoType.weight:
            return const GetWeightInfo();
        }
      },
    );
  }
}
