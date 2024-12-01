import 'package:flutter/material.dart';
import 'app_widget.dart';
import 'forget_password.dart';

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
      // Perform actual login logic
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        child: Stack(
          children: [
            // Gradient background
            Container(
              width: MediaQuery.of(context).size.width,
              height: MediaQuery.of(context).size.height / 2.5,
              decoration: BoxDecoration(
                gradient: LinearGradient(
                  begin: Alignment.topLeft,
                  end: Alignment.bottomRight,
                  colors: [Colors.blue, Colors.purple],
                ),
              ),
            ),
            // White overlay
            Container(
              margin:
                  EdgeInsets.only(top: MediaQuery.of(context).size.height / 3),
              height: MediaQuery.of(context).size.height,
              width: MediaQuery.of(context).size.width,
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(40),
                    topRight: Radius.circular(40)),
              ),
            ),
            // Form and inputs
            Container(
              margin: EdgeInsets.symmetric(horizontal: 20.0, vertical: 60.0),
              child: Form(
                key: _formkey,
                child: Column(
                  children: [
                    Center(
                      child: Image.asset(
                        'images/Designer(4).jpeg',
                        width: 150,
                        height: 150,
                      ),
                    ),
                    SizedBox(height: 20.0),
                    Text(
                      "Login",
                      style: AppWidget.HeadlineTextFeildStyle(),
                    ),
                    SizedBox(height: 30.0),
                    TextFormField(
                      controller: useremailcontroller,
                      decoration: InputDecoration(
                        hintText: 'Email',
                        hintStyle: AppWidget.semiBoldTextFeildStyle(),
                        prefixIcon: Icon(Icons.email_outlined),
                      ),
                      validator: (value) {
                        if (value == null || value.isEmpty) {
                          return 'Please enter your email';
                        }
                        return null;
                      },
                    ),
                    SizedBox(height: 30.0),
                    TextFormField(
                      controller: userpasswordcontroller,
                      decoration: InputDecoration(
                        hintText: 'Password',
                        hintStyle: AppWidget.semiBoldTextFeildStyle(),
                        prefixIcon: Icon(Icons.lock_outline),
                      ),
                      obscureText: true,
                      validator: (value) {
                        if (value == null || value.isEmpty) {
                          return 'Please enter your password';
                        }
                        return null;
                      },
                    ),
                    SizedBox(height: 20.0),
                    GestureDetector(
                      onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => ForgotPassword()),
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
                    SizedBox(height: 80.0),
                    GestureDetector(
                      onTap: userLogin,
                      child: Material(
                        elevation: 5.0,
                        borderRadius: BorderRadius.circular(20),
                        child: Container(
                          padding: EdgeInsets.symmetric(vertical: 8.0),
                          width: 200,
                          decoration: BoxDecoration(
                            color: Color(0Xffff5722),
                            borderRadius: BorderRadius.circular(20),
                          ),
                          child: Center(
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
          ],
        ),
      ),
    );
  }
}
