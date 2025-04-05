import 'package:flutter/material.dart';

class NavigationBarConfig {

  static List<BottomNavigationBarItem> items = [
    BottomNavigationBarItem(icon: Icon(Icons.home), label: "Home"),
    BottomNavigationBarItem(icon: Icon(Icons.favorite_border), label: "Favourites"),
    BottomNavigationBarItem(icon: Icon(Icons.local_atm_rounded), label: "Tickets"),
    BottomNavigationBarItem(icon: Icon(Icons.person), label: "Profile"),
  ];


  static BottomNavigationBarThemeData theme = BottomNavigationBarThemeData(
    selectedItemColor: Colors.red,
    unselectedItemColor: Colors.grey[700],
    selectedIconTheme: IconThemeData(size: 30, color: Colors.red),
    unselectedIconTheme: IconThemeData(size: 24, color: Colors.black),
    showSelectedLabels: true,
    showUnselectedLabels: true,
    backgroundColor: Colors.white,
    elevation: 8, //
  );
}