// ignore_for_file: file_names

import 'package:flutter/material.dart';

import '../ constants/app_styles.dart';

class FavoritesPage extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => FavoritesPageSate();
  const FavoritesPage({super.key});
}

class FavoritesPageSate extends State<FavoritesPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text("Favourites"),
        backgroundColor: AppTheme.appBarThemeLight.backgroundColor,
        iconTheme: AppTheme.appBarThemeLight.iconTheme,
        actionsIconTheme: AppTheme.appBarThemeLight.actionsIconTheme,
        titleTextStyle: AppTheme.appBarThemeLight.titleTextStyle,
        elevation: AppTheme.appBarThemeLight.elevation,
      ),
    );
  }
}
