import 'package:ecommerce_app/pages/time%20and%20date.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../ constants/app_styles.dart';
// ignore: unused_import
import '../ constants/navigation_bar_config.dart';
import '../Navigation/ favoritespage.dart';
import '../Navigation/ profilepage.dart';
import '../Navigation/ticketspage.dart';
import '../controllers/bottomnavcontroller.dart';
// ignore: unused_import
import 'app_styles.dart';
import 'home_page.dart';
class MovieDetailsPage extends StatefulWidget {
  final String movieTitle;
  final String movieYear;
  final String imagePath;

  const MovieDetailsPage({
    super.key,
    required this.movieTitle,
    required this.movieYear,
    required this.imagePath,
  });
  @override
  State<MovieDetailsPage> createState() => _MovieDetailsPageState();
}
class _MovieDetailsPageState extends State<MovieDetailsPage> {
  final BottomNavController bottomNavController = Get.put(
    BottomNavController(),
  );
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
            Padding(
              padding: const EdgeInsets.only(left: 7),
              child: Image.asset('assets/img/Group 1669.png'),
            ),
            Padding(
              padding: const EdgeInsets.only(right: 65, top: 20, left: 0.0),
              child: Text(
                "Star Wars: The Last Jedi",
                style: AppStyles.movieTitleStyle,
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Padding(
                  padding: const EdgeInsets.fromLTRB(52, 0, 0, 0),
                  child: Icon(Icons.timer, color: Colors.grey[600], size: 16),
                ),
                SizedBox(width: 8),
                Text(
                  "152 minutes",
                  style: TextStyle(color: Colors.grey[600], fontSize: 16),
                ),
                SizedBox(width: 16),
                Icon(Icons.star, color: Colors.grey[600], size: 16),
                SizedBox(width: 8),
                Text(
                  "7.0 (IMDb)",
                  style: TextStyle(color: Colors.grey[600], fontSize: 16),
                ),
              ],
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 40),
              child: Divider(thickness: 1, color: Colors.grey[700]),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 30),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "Release date",
                        style: TextStyle(
                          color: Colors.grey[600],
                          fontSize: 16,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      SizedBox(height: 4),
                      Text(
                        "December 9, 2017",
                        style: TextStyle(color: Colors.grey[600], fontSize: 16),
                      ),
                    ],
                  ),
                  Row(
                    children: [
                      Chip(
                        label: Text(
                          "Action",
                          style: TextStyle(
                            color: Colors.grey[600],
                            fontSize: 16,
                          ),
                        ),
                        backgroundColor: Colors.yellow[100],
                      ),
                      SizedBox(width: 8),
                      Chip(
                        label: Text(
                          "Sci-Fi",
                          style: TextStyle(
                            color: Colors.grey[600],
                            fontSize: 16,
                          ),
                        ),
                        backgroundColor: Colors.yellow[100],
                      ),
                    ],
                  ),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 40, vertical: 7),
              child: Divider(thickness: 1, color: Colors.grey[700]),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 30),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "Synopsis",
                    style: TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.bold,
                      color: Colors.grey[600],
                    ),
                  ),
                  SizedBox(height: 8),
                  Text(
                    "Rey (Daisy Ridley) finally manages to find the legendary Jedi knight, Luke Skywalker (Mark Hamill) on an island with a magical aura. The heroes of The Force Awakens including Leia, Finn Read more...",
                    style: AppStyles.synopsisStyle,
                  ),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 30, vertical: 20),
              child: ElevatedButton(
                onPressed: () {
                  Get.to(() => Timeanddate());
                },
                style: AppStyles.redButtonStyle,
                child: Text("Buy Ticket", style: TextStyle(fontSize: 18)),
              ),
            ),
          ],
        ),
      ),
      bottomNavigationBar: Obx(
        () => Theme(
          data: ThemeData(bottomNavigationBarTheme: NavigationBarConfig.theme),
          child: BottomNavigationBar(
            items: NavigationBarConfig.items,
            currentIndex: bottomNavController.selectedIndex.value,
            onTap: (index) {
              bottomNavController.changeIndex(index);
              switch (index) {
                case 0:
                  Get.to(() => HomePage());
                  break;
                case 1:
                  Get.to(() => FavoritesPage());
                  break;
                case 2:
                  Get.to(() => TicketsPage());
                  break;
                case 3:
                  Get.to(() => ProfilePage());
                  break;
              }
            },
          ),
        ),
      ),
    );
  }
}
