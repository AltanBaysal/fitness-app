import 'package:fitness_app/features/user_information/presentation/widgets/get_age_info_view.dart';
import 'package:fitness_app/features/user_information/presentation/widgets/get_lenght_info_view.dart';
import 'package:fitness_app/features/user_information/presentation/widgets/get_sex_info_view.dart';
import 'package:fitness_app/features/user_information/presentation/widgets/get_weight_info.dart';
import 'package:flutter/material.dart';
import '../../../../core/enums/get_body_info_pages.dart';

//? isimlendirme
class BodyInfoViewChooser extends StatelessWidget {
  const BodyInfoViewChooser({
    Key? key,
    required this.activePage
  }) : super(key: key);

  final GetBodyInfoPageEnum activePage;

  @override
  Widget build(BuildContext context) {
    switch (activePage) {
      case GetBodyInfoPageEnum.age : return const GetAgeInfoView();
      case GetBodyInfoPageEnum.lenght : return const GetLenghtInfoView();
      case GetBodyInfoPageEnum.sex : return const GetSexInfoView();
      case GetBodyInfoPageEnum.weight : return const GetWeightInfo();
    }
  }
}