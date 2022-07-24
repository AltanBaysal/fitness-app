import 'package:flutter/material.dart';
import 'features/user_information/presentation/pages/get_body_info_page.dart';

void main() {
  runApp(const MyApp());
}

//! input typlar ayarlanacak
//! yatay ekranı kitle
class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const GetBodyInfoPage(),
    );
  }
}
