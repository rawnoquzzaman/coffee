import 'package:flutter/material.dart';
import ' Reusable_background.dart';

class ForgotPassword extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Forgot Password"),
      ),
      body: Center(
        child: const Text(
          "Forgot Password Screen",
          style: TextStyle(fontSize: 20),
        ),
      ),
    );
  }
}
