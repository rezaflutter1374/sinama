// ignore: file_names
// ignore_for_file: file_names

import 'package:ecommerce_app/pages/payment.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../ constants/app_styles.dart';

class Confirmationpage extends StatefulWidget {
  const Confirmationpage({super.key});

  @override
  State<Confirmationpage> createState() => _ConfirmationPageState();
}

class _ConfirmationPageState extends State<Confirmationpage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        leading: IconButton(
          icon: Icon(Icons.arrow_back_ios_new, color: Colors.red),
          onPressed: () {
            Get.back();
          },
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Column(
          children: [
            Row(
              children: [
                ClipRRect(
                  borderRadius: BorderRadius.circular(8),
                  child: Image.asset("assets/img/Mask Group.png"),
                ),
                SizedBox(width: 40),
                Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "Star Wars: The Rise of Skywalker (2019)",
                        style: TextStyle(
                          fontSize: 18,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      SizedBox(height: 8),
                      Text(
                        "Date: Friday 17th, 2021",
                        style: TextStyle(fontSize: 14),
                      ),
                      Text(
                        "Time: 13:00 | Seat: 5C",
                        style: TextStyle(fontSize: 14),
                      ),
                    ],
                  ),
                ),
              ],
            ),
            SizedBox(height: 62),
            Divider(),
            SizedBox(height: 62),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text("Sub-total", style: TextStyle(fontSize: 16)),
                Text("\$40.00", style: TextStyle(fontSize: 16)),
              ],
            ),
            SizedBox(height: 30),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text("Total", style: TextStyle(fontSize: 16)),
                Text("\$40.00", style: TextStyle(fontSize: 16)),
              ],
            ),
            SizedBox(height: 88),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 30, vertical: 20),
              child: ElevatedButton(
                onPressed: () {
                  Get.to(() => Payment());
                },
                style: AppStyles.redButtonStyle,
                child: Text("Pay", style: TextStyle(fontSize: 18)),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
