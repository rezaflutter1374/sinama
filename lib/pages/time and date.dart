// ignore: file_names
// ignore: file_names
// ignore: unnecessary_import
// ignore_for_file: file_names

import 'package:flutter/material.dart';
import 'package:get/get.dart';
// ignore: unnecessary_import
import 'package:get/get_core/src/get_main.dart';

import '../ constants/app_styles.dart';
import 'confirmation page.dart';

class Timeanddate extends StatefulWidget {
  const Timeanddate({super.key});

  @override
  State<Timeanddate> createState() => _TimeanddateState();
}

class _TimeanddateState extends State<Timeanddate> {
  final Map<String, List<int>> seatStatus = {
    'A': [0, 0, 0, 0, 0],
    'B': [0, 0, 0, 0, 0],
    'C': [0, 0, 2, 0, 0],
    'D': [0, 1, 0, 0, 0],
    'E': [0, 0, 0, 0, 0],
    'F': [0, 1, 0, 0, 0],
  };

  void _toggleSeat(String row, int column) {
    setState(() {
      // تعیین وضعیت صندلی
      if (seatStatus[row]![column] == 0) {
        seatStatus[row]![column] = 2;
      } else if (seatStatus[row]![column] == 2) {
        seatStatus[row]![column] = 0;
      }
    });
  }

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
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Container(
                  padding: const EdgeInsets.all(8),
                  decoration: BoxDecoration(
                    color: Colors.red,
                    borderRadius: BorderRadius.circular(8),
                  ),
                  child: Column(
                    children: [
                      Text(
                        "Fri",
                        style: TextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      Text(
                        "17",
                        style: TextStyle(
                          fontSize: 24,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ],
                  ),
                ),
                Container(
                  padding: const EdgeInsets.all(8),
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(8),
                  ),
                  child: Column(
                    children: [
                      Text(
                        "Sat",
                        style: TextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      Text(
                        "18",
                        style: TextStyle(
                          fontSize: 24,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ],
                  ),
                ),
                Container(
                  padding: const EdgeInsets.all(8),
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(8),
                  ),
                  child: Column(
                    children: [
                      Text(
                        "Sun",
                        style: TextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      Text(
                        "19",
                        style: TextStyle(
                          fontSize: 24,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ],
                  ),
                ),
                Container(
                  padding: const EdgeInsets.all(8),
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(8),
                  ),
                  child: Column(
                    children: [
                      Text(
                        "Mon",
                        style: TextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      Text(
                        "20",
                        style: TextStyle(
                          fontSize: 24,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ],
                  ),
                ),
                Container(
                  padding: const EdgeInsets.all(8),
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(8),
                  ),
                  child: Column(
                    children: [
                      Text(
                        "Tue",
                        style: TextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      Text(
                        "21",
                        style: TextStyle(
                          fontSize: 24,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
            SizedBox(height: 20),

            // ساعت‌های نمایش فیلم
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Container(
                  padding: const EdgeInsets.all(8),
                  decoration: BoxDecoration(
                    color: Colors.red,
                    borderRadius: BorderRadius.circular(8),
                  ),
                  child: Column(
                    children: [
                      Text(
                        "13:00",
                        style: TextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      Text("\$5.25 - 3D", style: TextStyle(fontSize: 12)),
                    ],
                  ),
                ),
                Container(
                  padding: const EdgeInsets.all(8),
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(8),
                  ),
                  child: Column(
                    children: [
                      Text(
                        "15:45",
                        style: TextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      Text("\$4.50 - 3D", style: TextStyle(fontSize: 12)),
                    ],
                  ),
                ),
                Container(
                  padding: const EdgeInsets.all(8),
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(8),
                  ),
                  child: Column(
                    children: [
                      Text(
                        "18:50",
                        style: TextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      Text("\$6.50 - 3D", style: TextStyle(fontSize: 12)),
                    ],
                  ),
                ),
              ],
            ),
            SizedBox(height: 20),

            // نقشه صندلی‌ها
            GridView.builder(
              shrinkWrap: true,
              physics: NeverScrollableScrollPhysics(),
              gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 6,
              ),
              itemCount: 30,
              itemBuilder: (context, index) {
                final row = String.fromCharCode(
                  index ~/ 5 + 65,
                ); // A, B, C, ...
                final column = index % 5;
                final status = seatStatus[row]![column];
                return GestureDetector(
                  onTap: () => _toggleSeat(row, column),
                  child: Container(
                    margin: const EdgeInsets.all(4),
                    decoration: BoxDecoration(
                      color: status == 0 ? Colors.pink : Colors.blue,
                      borderRadius: BorderRadius.circular(8),
                    ),
                    child: Center(
                      child: Text(
                        // ignore: unnecessary_brace_in_string_interps
                        "${row}${column + 1}",
                        style: TextStyle(color: Colors.white),
                      ),
                    ),
                  ),
                );
              },
            ),

            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  "A",
                  style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
                ),
                SizedBox(width: 36),
                Text(
                  "B",
                  style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
                ),
                SizedBox(width: 36),
                Text(
                  "C",
                  style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
                ),
                SizedBox(width: 36),
                Text(
                  "D",
                  style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
                ),
                SizedBox(width: 36),
                Text(
                  "E",
                  style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
                ),
                SizedBox(width: 36),
                Text(
                  "F",
                  style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
                ),
              ],
            ),

            SizedBox(height: 10),
            Padding(
              padding: const EdgeInsets.only(right: 50),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  Container(width: 20, height: 20, color: Colors.pink),
                  SizedBox(width: 8),
                  Text("Available"),
                  SizedBox(width: 8),
                  Container(width: 20, height: 20, color: Colors.blue),
                  SizedBox(width: 8),
                  Text("Reserved"),
                  SizedBox(width: 8),
                  Container(width: 20, height: 20, color: Colors.red),
                  SizedBox(width: 8),
                  Text("Selected"),
                ],
              ),
            ),
            SizedBox(height: 20),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 30, vertical: 20),
              child: ElevatedButton(
                onPressed: () {
                  Get.to(() => Confirmationpage());
                },
                style: AppStyles.redButtonStyle,
                child: Text("Continue", style: TextStyle(fontSize: 18)),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
