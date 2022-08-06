import 'package:fitness_app/core/enums/body_info_type.dart';
import 'package:fitness_app/core/enums/sex.dart';
import 'package:fitness_app/features/user_information/domain/entities/user_entities.dart';
import 'package:fitness_app/features/user_information/domain/usecases/user_builder.dart';
import 'package:flutter/material.dart';
import '../../domain/usecases/edit_user_info.dart';

class UserInformationController with ChangeNotifier {
  BodyInfoType activeBodyInfoPage = BodyInfoType.sex;
  final TextEditingController getNameTextController = TextEditingController();
  Sex selectedSex = Sex.unknown;
  int selectedAge = 0;
  int selectedLenght = 0;
  int selectedWeight = 0;

  void selectSex(Sex sex) {
    selectedSex = sex;
    notifyListeners();
  }

  void setActiveBodyInfoPage(BodyInfoType pageEnum) {
    activeBodyInfoPage = pageEnum;
    notifyListeners();
  }

  void setUserInfos() {
    //? builder'a ihtiyaçım var mı?
    UserBuilder userBuilder = UserBuilder(user: UserInfoEntities());
    userBuilder.setUserName(getNameTextController.text);
    userBuilder.setUserSex(selectedSex);
    userBuilder.setUserAge(selectedAge);
    userBuilder.setUserWeight(selectedWeight);
    userBuilder.setUserLenght(selectedLenght);

    EditUserInfo editUserInfo = EditUserInfo();
    editUserInfo.addBodyInfo(userBuilder.user);
  }
}
