import 'package:ecommerce_app/%20constants/app_styles.dart';
import 'package:ecommerce_app/pages/successful.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:u_credit_card/u_credit_card.dart';

class Payment extends StatefulWidget {
  const Payment({super.key});
  @override
  State<Payment> createState() => _PaymentState();
}

class _PaymentState extends State<Payment> {
  final TextEditingController nameController = TextEditingController();
  final TextEditingController numberController = TextEditingController();
  final TextEditingController validFromController = TextEditingController();
  final TextEditingController validThruController = TextEditingController();
  final TextEditingController cvvController = TextEditingController();
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
      body: SingleChildScrollView(
        keyboardDismissBehavior: ScrollViewKeyboardDismissBehavior.onDrag,
        child: Padding(
          padding: const  EdgeInsets.all(16),
          child: Column(

            children: [
              CreditCardUi(
                cardHolderFullName:
                    nameController.text.isEmpty
                        ? 'Your Name'
                        : nameController.text,
                cardNumber:
                    numberController.text.isEmpty
                        ? '4434 5678 1234 5678'
                        : numberController.text,
                validFrom:
                    validFromController.text.isEmpty
                        ? 'MM/YY'
                        : validFromController.text,
                validThru:
                    validThruController.text.isEmpty
                        ? 'MM/YY'
                        : validThruController.text,
                cardType: CardType.credit,
                width: 300,
                topLeftColor: Colors.blue,
                placeNfcIconAtTheEnd: true,
                cardProviderLogoPosition: CardProviderLogoPosition.right,
                showBalance: true,
                autoHideBalance: true,
                enableFlipping: true,
                cvvNumber:
                    cvvController.text.isEmpty ? '***' : cvvController.text,
              ),
              const SizedBox(height: 20),
              Padding(
                padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 12),
                child: TextField(
                  keyboardType: TextInputType.name,
                  controller: nameController,
                  decoration: InputDecoration(
                    labelText: 'Card Holder Name',
                    labelStyle: TextStyle(color: Colors.black),
                    filled: true,
                    fillColor: Colors.white,
                    enabledBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(12),
                      borderSide: BorderSide(color: Colors.black, width: 2),
                    ),
                    focusedBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(12),
                      borderSide: BorderSide(color: Colors.red, width: 2),
                    ),
                  ),
                  cursorColor: Colors.red,
                  onChanged: (value) => setState(() {}),
                ),
              ),
              const SizedBox(height: 6),
              Padding(
                padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 12),
                child: TextField(
                  controller: numberController,
                  decoration: InputDecoration(
                    labelText: 'Card Number',
                    labelStyle: TextStyle(color: Colors.black),
                    fillColor: Colors.white,
                    enabledBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(12),
                      borderSide: BorderSide(color: Colors.black, width: 2),
                    ),
                    focusedBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(12),
                      borderSide: BorderSide(color: Colors.red, width: 2),
                    ),
                  ),
                  cursorColor: Colors.red,
                  keyboardType: TextInputType.number,
                  onChanged: (value) => setState(() {}),
                ),
              ),
              const SizedBox(height: 6),
              Padding(
                padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 12),
                child: TextField(
                  controller: validFromController,
                  decoration: InputDecoration(
                    labelText: 'Valid From (MM/YY)',
                    labelStyle: TextStyle(color: Colors.black),
                    fillColor: Colors.white,
                    enabledBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(12),
                      borderSide: BorderSide(color: Colors.black, width: 2),
                    ),
                    focusedBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(12),
                      borderSide: BorderSide(color: Colors.red, width: 2),
                    ),
                  ),
                  cursorColor: Colors.red,
                  keyboardType: TextInputType.datetime,
                  onChanged: (value) => setState(() {}),
                ),
              ),
              const SizedBox(height: 6),
              Padding(
                padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 12),
                child: TextField(
                  controller: validThruController,
                  decoration: InputDecoration(
                    labelText: 'Valid Thru (MM/YY)',
                    labelStyle: TextStyle(color: Colors.black),
                    fillColor: Colors.white,
                    enabledBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(12),
                      borderSide: BorderSide(color: Colors.black, width: 2),
                    ),
                    focusedBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(12),
                      borderSide: BorderSide(color: Colors.red, width: 2),
                    ),
                  ),
                  cursorColor: Colors.red,
                  keyboardType: TextInputType.datetime,
                  onChanged: (value) => setState(() {}),
                ),
              ),
              const SizedBox(height: 6),
              Padding(
                padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 12),
                child: TextField(
                  controller: cvvController,
                  decoration: InputDecoration(
                    labelText: 'CVV',
                    labelStyle: TextStyle(color: Colors.black),
                    fillColor: Colors.white,
                    enabledBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(12),
                      borderSide: BorderSide(color: Colors.black, width: 2),
                    ),
                    focusedBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(12),
                      borderSide: BorderSide(color: Colors.red, width: 2),
                    ),
                  ),
                  cursorColor: Colors.red,
                  keyboardType: TextInputType.number,
                  obscureText: true,
                  onChanged: (value) => setState(() {}),
                ),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 30, vertical: 20),
                child: ElevatedButton(
                  onPressed: () {
                    Get.to(() => PaymentSuccessPage());
                  },
                  style: AppStyles.redButtonStyle,
                  child: Text("Pay", style: TextStyle(fontSize: 18)),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
