
import 'package:fitness_app/features/user_information/domain/entities/user_entities.dart';

import '../../../../core/enums/sex.dart';

class UserBuilder{
  UserBuilder({required UserEntities user});
  final UserEntities _user = UserEntities();

  void setUserEmail(String eMail) => _user.eMail = eMail;

  void setUserAge(int age) => _user.age = age;

  void setUserLenght(int lenght) => _user.lenght = lenght;

  void setUserName(String name) => _user.name = name;

  void setUserPassword(String password) => _user.password = password;

  void setUserWeight(int weight) => _user.weight = weight;

  void setUserSex(Sex sex) => _user.sex = sex;

  UserEntities get user => _user;
}