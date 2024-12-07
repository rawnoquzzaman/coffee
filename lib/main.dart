import 'package:flutter/material.dart';
import 'login.dart';
import 'home_page.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      initialRoute: '/login', // Start with the Login screen
      routes: {
        '/login': (context) => Login(),
        '/home': (context) => HomePage(),
      },
    );
  }
}
