import 'package:flutter/material.dart';
import 'package:health_care/page/login_register.dart';
import 'package:health_care/page/mainpage.dart';

void main(List<String> args) {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
 

  const MyApp({super.key});


  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      routes: {
        MainPage.mainRoute :(context) => MainPage(),
        LoginRegister.mainRoute :(context) => const LoginRegister()
      },
      home: MainPage()
    );
  }
}
