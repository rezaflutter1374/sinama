// ignore: file_names
// ignore_for_file: file_names

import 'package:ecommerce_app/%20constants/app_styles.dart';
import 'package:ecommerce_app/controllers/logincontroller.dart';
import 'package:ecommerce_app/pages/home_page.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
// ignore: unused_import
import '../constants/app_styles.dart';
// ignore: unused_import
import '../controllers/login_controller.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  final TextEditingController _usernameController = TextEditingController();
  final TextEditingController _passwordController = TextEditingController();

  final LoginController controller = Get.put(LoginController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          // Background Image
          Positioned.fill(
            child: Image.asset("assets/img/image 1.png", fit: BoxFit.cover),
          ),
          Positioned.fill(
            child: Container(
              decoration: BoxDecoration(
                gradient: LinearGradient(
                  begin: Alignment.topCenter,
                  end: Alignment.bottomCenter,
                  colors: [
                    Colors.transparent,
                    // ignore: deprecated_member_use
                    Colors.black.withOpacity(0.7),
                    Colors.black,
                  ],
                  stops: [0.0, 0.4, 0.7],
                ),
              ),
            ),
          ),
          Center(
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 24),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Spacer(),
                  TextField(
                    cursorColor: Colors.white,
                    controller: _usernameController,
                    style: TextStyle(fontSize: 18, color: Colors.white),
                    decoration: AppStyles.textFieldDecoration.copyWith(
                      hintText: "Email",
                    ),
                  ),
                  SizedBox(height: 26),
                  TextField(
                    cursorColor: Colors.white,
                    controller: _passwordController,
                    obscureText: true,
                    style: TextStyle(fontSize: 18, color: Colors.white),
                    decoration: AppStyles.textFieldDecoration.copyWith(
                      hintText: "Password",
                    ),
                  ),
                  SizedBox(height: 34),
                  ElevatedButton(
                    onPressed: () {
                      Get.to(HomePage());
                    },
                    style: AppStyles.redButtonStyle,
                    child: Text("Login"),
                  ),
                  SizedBox(height: 34),
                  Obx(() {
                    return ElevatedButton(
                      onPressed:
                          controller.isLoading.value
                              ? null
                              : controller.navigateToRegistrationPage,
                      style: AppStyles.blackButtonStyle,
                      child:
                          controller.isLoading.value
                              ? CircularProgressIndicator(
                                valueColor: AlwaysStoppedAnimation<Color>(
                                  const Color(0xFFCE0606),
                                ),
                              )
                              : Text("Register"),
                    );
                  }),
                  SizedBox(height: 80),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
