import 'package:ecommerce_app/%20constants/app_styles.dart';
import 'package:ecommerce_app/Navigation/%20favoritespage.dart';
import 'package:ecommerce_app/Navigation/ticketspage.dart';
import 'package:ecommerce_app/pages/home_page.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import ' constants/navigation_bar_config.dart';
import 'Navigation/ profilepage.dart';
import 'controllers/bottomnavcontroller.dart';
import 'routes/app_routes.dart';

//این اپ برای ایفون ۱۶طراحی شده
void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(appBarTheme: AppTheme.appBarThemeDark),
      initialRoute: AppRoutes.login,
      getPages: AppRoutes.routes,
    );
  }
}

class MainPage extends StatelessWidget {
  final BottomNavController bottomNavController = Get.put(
    BottomNavController(),
  );

  final List<Widget> pages = [
    HomePage(),
    FavoritesPage(),
    TicketsPage(),
    ProfilePage(),
  ];

  MainPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Obx(() => pages[bottomNavController.selectedIndex.value]),

      bottomNavigationBar: Obx(
        () => Theme(
          data: ThemeData(bottomNavigationBarTheme: NavigationBarConfig.theme),
          child: BottomNavigationBar(
            items: NavigationBarConfig.items,
            currentIndex: bottomNavController.selectedIndex.value,
            onTap: (index) {
              bottomNavController.changeIndex(index);
            },
          ),
        ),
      ),
    );
  }
}
