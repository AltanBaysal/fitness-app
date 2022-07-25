import 'package:fitness_app/core/init/controller_list.dart';
import 'package:fitness_app/features/user_information/presentation/pages/get_name_page.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(
    MultiProvider(
      providers: controllerList,
      child: const MyApp(),
    ),
  );
}

//! text field input typlar ayarlanacak
//! yatay ekranı kitle

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const GetNamePage(),
    );
  }
}
