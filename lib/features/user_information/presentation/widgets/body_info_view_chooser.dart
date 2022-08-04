import 'package:fitness_app/features/user_information/presentation/widgets/get_age_info_view.dart';
import 'package:fitness_app/features/user_information/presentation/widgets/get_lenght_info_view.dart';
import 'package:fitness_app/features/user_information/presentation/widgets/get_sex_info_view.dart';
import 'package:fitness_app/features/user_information/presentation/widgets/get_weight_info.dart';
import 'package:flutter/material.dart';
import '../../../../core/enums/body_info_type.dart';

//? isimlendirme
class BodyInfoViewChooser extends StatelessWidget {
  const BodyInfoViewChooser({
    Key? key,
    required this.activePage
  }) : super(key: key);

  final BodyInfoType activePage;

  @override
  Widget build(BuildContext context) {
    switch (activePage) {
      case BodyInfoType.age : return const GetAgeInfoView();
      case BodyInfoType.lenght : return const GetLenghtInfoView();
      case BodyInfoType.sex : return const GetSexInfoView();
      case BodyInfoType.weight : return const GetWeightInfo();
    }
  }
}