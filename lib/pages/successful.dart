import 'package:ecommerce_app/%20constants/app_styles.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
// ignore: unnecessary_import
import 'package:get/get_core/src/get_main.dart';

import '../routes/app_routes.dart';

class PaymentSuccessPage extends StatelessWidget {
  const PaymentSuccessPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: AppTheme.appBarThemeLight.backgroundColor,
        iconTheme: AppTheme.appBarThemeLight.iconTheme,
        actionsIconTheme: AppTheme.appBarThemeLight.actionsIconTheme,
        titleTextStyle: AppTheme.appBarThemeLight.titleTextStyle,
        elevation: AppTheme.appBarThemeLight.elevation,
        title: Text("Payment Success", style: TextStyle(fontSize: 18)),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              "Successful",
              style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
            ),
            SizedBox(height: 30),
            Icon(Icons.check_circle_outline, color: Colors.green, size: 80),
            SizedBox(height: 30),
            Padding(
              padding: const EdgeInsets.all(40.0),
              child: ElevatedButton(
                onPressed: () {
                  Get.toNamed(AppRoutes.home);
                },
                style: AppStyles.blackButtonStyle,
                child: Text("Return Home"),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
