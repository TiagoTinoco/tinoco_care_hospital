import 'package:flutter/material.dart';
import 'package:tinoco_care_hospital/config/custom_colors.dart';
import 'package:tinoco_care_hospital/view/auth/sign_in_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Tinoco Care Hospital',
      theme: ThemeData(
        primarySwatch: TinocoColors.tinocoSwatchColor,
      ),
      home: SignInScreen(),
    );
  }
}
