
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:provider/single_child_widget.dart';
import '../../features/user_information/presentation/provider/user_information_controller.dart';

List<SingleChildWidget> controllerList = [ 
  ChangeNotifierProvider<UserInformationController>(create: (BuildContext context) => UserInformationController()),
];