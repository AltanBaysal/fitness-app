import 'package:firebase_core/firebase_core.dart';
import 'package:fitness_app/core/init/controller_list.dart';
import 'package:fitness_app/features/landing/presentation/pages/landing_page.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  runApp(
    MultiProvider(
      providers: controllerList,
      child: const FitnessApp(),
    ),
  );
}

//! text field input typelar ayarlanacak
//! yatay ekranı kitle

class FitnessApp extends StatelessWidget {
  const FitnessApp({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const LandingPage(),
    );
  }
}


/*
Selector<MainPageController, MainPageMod>(
          selector: (
            BuildContext context,
            MainPageController mainPageController,
          ) {
            return mainPageController.mainPageMod;
          },
          builder:
              (BuildContext context, MainPageMod mainPageMod, Widget? child) {
            return MainPageSliverAppBarActions(mainPageMod: mainPageMod);
          },
        ),
*/
