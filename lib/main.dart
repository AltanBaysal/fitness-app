import 'package:fitness_app/core/constants/icons_constants.dart';
import 'package:fitness_app/core/shared_widgets.dart/rectangle_button.dart';
import 'package:fitness_app/features/user_information/presentation/widgets/gender_card.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: Scaffold(
        body: Container(
          margin: const EdgeInsets.symmetric(vertical: 30, horizontal: 20),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              GenderCard(
                size: 100,
                icon: CustomIcons.maleGender,
                isActive: false,
                onTap: () {
                  print("WTF");
                },
              ),
              RectangleButton(
                isActive: true,
                onTap: () {
                  print("hello");
                },
                text: 'Continue',
              ),
            ],
          ),
        ),
      ),
    );
  }
}
