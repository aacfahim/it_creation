import 'package:flutter/material.dart';
import 'package:it_creation/screens/dashboard_screen.dart';
import 'package:it_creation/screens/form_screen.dart';
import 'package:it_creation/screens/login_screen.dart';
import 'package:it_creation/utils/colors.dart';
import 'package:it_creation/widgets/bottom_appbar.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Demo',
      theme: ThemeData(),
      debugShowCheckedModeBanner: false,
      home: const LoginScreen(),
    );
  }
}
