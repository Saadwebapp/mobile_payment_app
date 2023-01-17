import 'package:flutter/material.dart';
import 'package:mobile_payment_app/screens/firstPage.dart';
import 'package:mobile_payment_app/screens/mainMenu.dart';
import 'package:mobile_payment_app/screens/login.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: FirstPage(),
    );
  }
}
