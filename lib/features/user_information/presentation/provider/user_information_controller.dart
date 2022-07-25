
import 'package:fitness_app/core/enums/get_body_info_pages.dart';
import 'package:fitness_app/core/enums/sex.dart';
import 'package:fitness_app/features/user_information/domain/entities/user_entities.dart';
import 'package:fitness_app/features/user_information/domain/usecases/user_builder.dart';
import 'package:flutter/material.dart';

class UserInformationController with ChangeNotifier{
  UserBuilder userBuilder = UserBuilder(user: UserEntities());
  GetBodyInfoPageEnum activeBodyInfoPage = GetBodyInfoPageEnum.sex;

  final TextEditingController getNameTextController =TextEditingController();

  Sex selectedSex = Sex.male; //! burayı unselected hale getir null ile
  int selectedAge = 0; //! burayı unselected hale getir null ile
  int selectedLenght = 0; //! burayı unselected hale getir null ile
  int selectedWeight = 0; //! burayı unselected hale getir null ile
  

  void selectSex(Sex sex){
    selectedSex = sex;
    notifyListeners();
  }

  void setActiveBodyInfoPage(GetBodyInfoPageEnum pageEnum){
    activeBodyInfoPage = pageEnum;
    notifyListeners();
  }

  void setUserNameInfo(){
    userBuilder.setUserName(getNameTextController.text);
    userBuilder.setUserSex(selectedSex);
  }  
}