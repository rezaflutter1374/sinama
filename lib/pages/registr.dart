import 'package:ecommerce_app/%20constants/app_styles.dart';
import 'package:ecommerce_app/routes/app_routes.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
// ignore: unnecessary_import
import 'package:get/get_core/src/get_main.dart';
// ignore: unused_import
import '../constants/app_styles.dart';

class RegistrationPage extends StatefulWidget {
  const RegistrationPage({super.key});

  @override
  State<RegistrationPage> createState() => _RegistrationPageState();
}

class _RegistrationPageState extends State<RegistrationPage> {
  // ignore: unused_field
  final _formKey = GlobalKey<FormState>();
  // ignore: unused_field
  final TextEditingController _emailController = TextEditingController();

  // ignore: unused_element
  String? _validateEmail(String? value) {
    if (value == null || value.isEmpty) {
      return "Please enter your email.";
    } else if (!RegExp(r'^[\w-\.]+@([\w-]+\.)+[\w-]{2,4}$').hasMatch(value)) {
      return "The email address is not valid.";
    }
    return null;
  }

  @override
  Widget build(BuildContext context) {

    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(
        automaticallyImplyLeading: false,
        actions: [
          Padding(
            padding: const EdgeInsets.only(right: 20),
            child: IconButton(
              onPressed: () {
                Get.back();
              },
              icon: Icon(Icons.close),
            ),
          ),
        ],
      ),

      body: SafeArea(
        child: SingleChildScrollView (
          child: Padding(
            padding: const EdgeInsets.all(24),
            child: Column(
        
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                SizedBox(height: 80,),
                TextField(
                  cursorColor: Colors.white,
                  keyboardType: TextInputType.name,
                  style: TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.normal,
        
                    color: Colors.white,
                  ),
                  decoration: AppStyles.textFieldDecoration.copyWith(
                    hintText: "First name",
                  ),
                ),
                SizedBox(height: 30),
        
                TextField(
                  cursorColor: Colors.white,
                  keyboardType: TextInputType.name,
                  style: AppStyles.bodyTextStyle,
                  decoration: AppStyles.textFieldDecoration.copyWith(
                    hintText: "Second name",
                  ),
                ),
                SizedBox(height: 26),
                Form(
                  key: _formKey,
                  child: Column(
        
                    children: [
                      TextFormField(
                        cursorColor: Colors.white,
                        controller: _emailController,
                        style: AppStyles.bodyTextStyle,
                        decoration: AppStyles.textFieldDecoration.copyWith(
                          hintText: "Email",
                          errorStyle: TextStyle(color: Colors.red, fontSize: 18),
                        ),
                        validator: _validateEmail,
                        keyboardType: TextInputType.emailAddress,
                      ),
                      SizedBox(height: 26),
        
                      TextField(
                        cursorColor: Colors.white,
                        keyboardType: TextInputType.visiblePassword,
                        obscureText: true,
                        style: AppStyles.bodyTextStyle,
                        decoration: AppStyles.textFieldDecoration.copyWith(
                          hintText: "Password",
                        ),
                      ),
                      SizedBox(height: 26),
        
                      TextField(
                        cursorColor: Colors.white,
                        obscureText: true,
                        keyboardType: TextInputType.visiblePassword,
                        style: AppStyles.bodyTextStyle,
                        decoration: AppStyles.textFieldDecoration.copyWith(
                          hintText: "Re-Password",
                        ),
                      ),
                      SizedBox(height: 26),
        
                      ElevatedButton(
                        onPressed: () {
                          if (_formKey.currentState != null &&
                              _formKey.currentState!.validate()) {
                            if (kDebugMode) {
                              print("Valid email: ${_emailController.text}");
                            }
                            Get.toNamed(AppRoutes.home);
                          } else {
                            if (kDebugMode) {
                              print("Invalid email");
                            }
                          }
                        },
                        style: AppStyles.redButtonStyle,
                        child: Text("Register"),
                      ),
                      SizedBox(height: 15),
                      ElevatedButton(
                        onPressed: () {
                          Get.toNamed(AppRoutes.home);
                        },
                        style: AppStyles.blackButtonStyle,
                        child: Text("Login"),
                      ),
                    ],
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
