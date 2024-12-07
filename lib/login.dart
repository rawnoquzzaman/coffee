import 'package:flutter/material.dart';
import 'app_widget.dart';
import 'forget_password.dart';
import ' Reusable_background.dart';

class Login extends StatefulWidget {
  const Login({super.key});

  @override
  State<Login> createState() => _LoginState();
}

class _LoginState extends State<Login> {
  final TextEditingController useremailcontroller = TextEditingController();
  final TextEditingController userpasswordcontroller = TextEditingController();
  final GlobalKey<FormState> _formkey = GlobalKey<FormState>();

  @override
  void dispose() {
    useremailcontroller.dispose();
    userpasswordcontroller.dispose();
    super.dispose();
  }

  void userLogin() {
    if (_formkey.currentState!.validate()) {
      print("Logging in...");
      // Navigate to HomePage
      Navigator.pushNamed(context, '/home');
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Form(
            key: _formkey,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const SizedBox(height: 60.0),
                Center(
                  child: Image.asset(
                    'images/Designer(4).jpeg',
                    width: 150,
                    height: 150,
                  ),
                ),
                const SizedBox(height: 20.0),
                Text(
                  "Login",
                  style: AppWidget.HeadlineTextFeildStyle(),
                ),
                const SizedBox(height: 30.0),
                TextFormField(
                  controller: useremailcontroller,
                  decoration: InputDecoration(
                    hintText: 'Email',
                    hintStyle: AppWidget.semiBoldTextFeildStyle(),
                    prefixIcon: const Icon(Icons.email_outlined),
                  ),
                  validator: (value) {
                    if (value == null || value.isEmpty) {
                      return 'Please enter your email';
                    }
                    return null;
                  },
                ),
                const SizedBox(height: 30.0),
                TextFormField(
                  controller: userpasswordcontroller,
                  decoration: InputDecoration(
                    hintText: 'Password',
                    hintStyle: AppWidget.semiBoldTextFeildStyle(),
                    prefixIcon: const Icon(Icons.lock_outline),
                  ),
                  obscureText: true,
                  validator: (value) {
                    if (value == null || value.isEmpty) {
                      return 'Please enter your password';
                    }
                    return null;
                  },
                ),
                const SizedBox(height: 20.0),
                GestureDetector(
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => ForgotPassword(),
                      ),
                    );
                  },
                  child: Container(
                    alignment: Alignment.topRight,
                    child: Text(
                      "Forgot Password?",
                      style: AppWidget.semiBoldTextFeildStyle(),
                    ),
                  ),
                ),
                const SizedBox(height: 80.0),
                GestureDetector(
                  onTap: userLogin,
                  child: Material(
                    elevation: 5.0,
                    borderRadius: BorderRadius.circular(20),
                    child: Container(
                      padding: const EdgeInsets.symmetric(vertical: 8.0),
                      width: 200,
                      decoration: BoxDecoration(
                        color: const Color(0Xffff5722),
                        borderRadius: BorderRadius.circular(20),
                      ),
                      child: const Center(
                        child: Text(
                          "LOGIN",
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 18.0,
                            fontFamily: 'Poppins1',
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
