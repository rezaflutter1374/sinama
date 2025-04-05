import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
final TextEditingController phoneController =
TextEditingController(text: "0"); // مقدار پیش‌فرض صفر


class StaticTextFields {
  static final TextEditingController names = TextEditingController();
  static final TextEditingController second = TextEditingController();
  static final TextEditingController gmail = TextEditingController();
  static final Phone = phoneController;

  static List<Widget> getTextFields() {
    return [
      TextField(
        controller: names,
        decoration: AppInputDecorations.baseDecoration('First name'),
        cursorColor: Colors.black12,
        keyboardType: TextInputType.text,
        cursorHeight: 17,
        inputFormatters: [
          LengthLimitingTextInputFormatter(20),
          FilteringTextInputFormatter.allow(RegExp(r'[a-zA-Z\u0600-\u06FF\s]')),
        ],
      ),

      SizedBox(height: 30),
      TextField(
        controller: second,
        decoration: AppInputDecorations.baseDecoration('Second name'),
        cursorColor: Colors.black12,
        keyboardType: TextInputType.name,

        cursorHeight: 17,
      ),
      SizedBox(height: 30),
      TextField(
        controller: gmail,
        decoration: AppInputDecorations.baseDecoration('Email'),
        cursorColor: Colors.black12,
        keyboardType: TextInputType.emailAddress,
        cursorHeight: 17,
      ),
      SizedBox(height: 30),

      TextField(
        decoration: AppInputDecorations.baseDecoration('Phone Number').copyWith(
          hintText: "09123456789",
          hintStyle: TextStyle(
            color: Colors.grey,
            fontSize: 14,
            fontWeight: FontWeight.w400,
          ),
        ),
        cursorColor: Colors.black12,
        keyboardType: TextInputType.number,
        cursorHeight: 17,
        inputFormatters: [
          LengthLimitingTextInputFormatter(11),
          FilteringTextInputFormatter.digitsOnly,
          FilteringTextInputFormatter.allow(RegExp(r'^0\d*')),
        ],
      ),
    ];
  }
}

class AppInputDecorations {
  static InputDecoration baseDecoration(String label) {
    return InputDecoration(
      labelText: label,
      labelStyle: const TextStyle(
        color: Colors.black,
        fontSize: 16,
        fontWeight: FontWeight.bold,
      ),
      filled: true,
      fillColor: const Color.fromRGBO(255, 255, 255, 1.0),
      enabledBorder: OutlineInputBorder(
        borderSide: BorderSide(color: Colors.black, width: 0.2),
        borderRadius: BorderRadius.circular(8),
      ),
      focusedBorder: OutlineInputBorder(
        borderSide: BorderSide(
          color: const Color.from(alpha: 1, red: 0, green: 0, blue: 0),
          width: 2,
        ),
        borderRadius: BorderRadius.circular(4),
      ),
      contentPadding: const EdgeInsets.symmetric(horizontal: 16, vertical: 12),
    );
  }
}
