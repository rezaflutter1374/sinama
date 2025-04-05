import 'package:flutter/material.dart';

import '../ constants/app_styles.dart';

class TicketsPage extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => TicketsPageSate();
  const TicketsPage({super.key});
}

class TicketsPageSate extends State<TicketsPage> {
  @override
  Widget build(BuildContext contxt) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text("Tickets"),
        backgroundColor: AppTheme.appBarThemeLight.backgroundColor,
        iconTheme: AppTheme.appBarThemeLight.iconTheme,
        actionsIconTheme: AppTheme.appBarThemeLight.actionsIconTheme,
        titleTextStyle: AppTheme.appBarThemeLight.titleTextStyle,
        elevation: AppTheme.appBarThemeLight.elevation,
      ),


    );
  }
}
