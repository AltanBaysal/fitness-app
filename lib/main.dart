import 'package:fitness_app/features/credential/presentation/pages/credential_page.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

//! input typlar ayarlanacak
class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const CredentialPage(),
    );
  }
}
