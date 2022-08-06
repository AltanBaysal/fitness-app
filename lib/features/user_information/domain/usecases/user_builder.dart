
import 'package:fitness_app/features/user_information/domain/entities/user_entities.dart';
import '../../../../core/enums/sex.dart';

class UserBuilder{
  UserBuilder({required UserInfoEntities user});
  final UserInfoEntities _user = UserInfoEntities();

  void setUserAge(int age) => _user.age = age;

  void setUserLenght(int lenght) => _user.lenght = lenght;

  void setUserName(String name) => _user.name = name;

  void setUserWeight(int weight) => _user.weight = weight;

  void setUserSex(Sex sex) => _user.sex = sex;

  UserInfoEntities get user => _user;
}