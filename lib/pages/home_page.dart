// ignore: unnecessary_import
import 'package:carousel_slider/carousel_options.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
// ignore: unnecessary_import
import 'package:get/get_core/src/get_main.dart';
import '../ constants/app_styles.dart';
import '../ constants/navigation_bar_config.dart';

// ignore: unused_import
import '../Navigation/ favoritespage.dart';
import '../Navigation/ profilepage.dart';
import '../Navigation/ticketspage.dart';
import '../controllers/bottomnavcontroller.dart';
import 'moviepage.dart';
import '../widget/movie_card.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final int _selectedIndex = 0;
  int _selectedCategoryIndex = 0;

  final List<Map<String, String>> movies = [
    {"image": "assets/img/sha.png", "title": "Film 1", "year": "2023"},
    {"image": "assets/img/Group 319.png", "title": "Film 2", "year": "2022"},
    {"image": "assets/img/sh.png", "title": "Film 3", "year": "2021"},
    {"image": "assets/img/car.png", "title": "Film 4", "year": "2021"},
  ];

  final List<String> imagePaths = [
    "assets/img/Untitled.png",
    "assets/img/bg.png",
    "assets/img/cast.png",
    "assets/img/hsa.png"
  ];

  final List<String> categories = [
    "Action",
    "Comedy",
    "Blockbuster",
    "Romance",
  ];

  final BottomNavController bottomNavController = Get.put(
    BottomNavController(),
  );

  void _onCategoryTapped(int index) {
    setState(() {
      _selectedCategoryIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    double _ = MediaQuery.of(context).size.width;
    double screenHeight = MediaQuery.of(context).size.height;
    return Scaffold(
      backgroundColor: Colors.white,
      body: IndexedStack(
        index: _selectedIndex,
        children: [
          SingleChildScrollView(
            child: Column(
              children: [
                Padding(
                  padding: const EdgeInsets.only(top: 94, left: 30),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      RichText(
                        text: TextSpan(
                          children: [
                            TextSpan(
                              text: "Welcome ",
                              style: AppStyles.welcomeTextStyle,
                            ),
                            TextSpan(
                              text: "Seun",
                              style: AppStyles.seunTextStyle,
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
                // ignore: sized_box_for_whitespace
                Container(
                  height: screenHeight * 0.3,
                  child: CarouselSlider.builder(
                    itemCount: imagePaths.length,
                    itemBuilder: (context, index, realIndex) {
                      return Image.asset(imagePaths[index], fit: BoxFit.cover);
                    },
                    options: CarouselOptions(
                      enlargeCenterPage: true,
                      viewportFraction: 0.9,
                      autoPlay: true,
                      aspectRatio: 20 / 9,
                      enableInfiniteScroll: true,
                    ),
                  ),
                ),
                SizedBox(height: 20),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    for (int i = 0; i < categories.length; i++)
                      GestureDetector(
                        onTap: () {
                          _onCategoryTapped(i);
                        },
                        child: Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 8.7),
                          child: Text(
                            categories[i],
                            style: TextStyle(
                              color:
                                  _selectedCategoryIndex == i
                                      ? Colors.red
                                      : Colors.black,
                              fontWeight:
                                  _selectedCategoryIndex == i
                                      ? FontWeight.bold
                                      : FontWeight.normal,
                              decoration:
                                  _selectedCategoryIndex == i
                                      ? TextDecoration.underline
                                      : null,
                            ),
                          ),
                        ),
                      ),
                  ],
                ),
                SizedBox(height: 10),
                GridView.builder(
                  shrinkWrap: true,
                  physics: NeverScrollableScrollPhysics(),
                  gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 2,
                    crossAxisSpacing: 16,
                    mainAxisSpacing: 14,
                    childAspectRatio: 3 / 4,
                  ),
                  itemCount: movies.length,
                  itemBuilder: (context, index) {
                    return GestureDetector(
                      onTap: () {
                        if (index == 0) {
                          Get.to(
                            () => MovieDetailsPage(
                              movieTitle: movies[index]["title"]!,
                              movieYear: movies[index]["year"]!,
                              imagePath: movies[index]["image"]!,
                            ),
                          );
                        }
                      },
                      child: MovieCard(
                        imagePath: movies[index]["image"]!,
                        movieTitle: movies[index]["title"]!,
                        releaseYear: movies[index]["year"]!,
                      ),
                    );
                  },
                ),
              ],
            ),
          ),
        ],
      ),

      bottomNavigationBar: Obx(
        () => Theme(
          data: ThemeData(
            bottomNavigationBarTheme: NavigationBarConfig.theme,
          ),
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
