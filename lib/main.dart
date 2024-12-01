import 'package:coffee_phase/pages/login.dart';
import 'package:flutter/material.dart';
import 'package:flutter/material.dart';

class AppWidget {
  static TextStyle HeadlineTextFeildStyle() {
    return TextStyle(
      fontSize: 24.0,
      fontWeight: FontWeight.bold,
      color: Colors.black,
    );
  }

  static TextStyle semiBoldTextFeildStyle() {
    return TextStyle(
      fontSize: 16.0,
      fontWeight: FontWeight.w600,
      color: Colors.grey,
    );
  }
}

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: Login(),
    );
  }
}
