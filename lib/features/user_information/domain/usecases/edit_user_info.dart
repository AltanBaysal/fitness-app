

import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:fitness_app/features/user_information/domain/entities/user_entities.dart';
import '../../../../core/services/user_singelton.dart';


//! yap bunu
class EditUserInfo{
  final FirebaseFirestore _firestore = FirebaseFirestore.instance;

  void addBodyInfo(UserInfoEntities userInfoEntities) async{
    await _firestore.collection("Users").doc(ActiveUserSingelton().userUid).set({
      "name": userInfoEntities.name,
      "age":userInfoEntities.age,
      "lenght":userInfoEntities.lenght,
      "sex": userInfoEntities.sex?.index,
      "weight":userInfoEntities.weight,
    });
  }
}