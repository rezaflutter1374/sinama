import 'package:flutter/material.dart';

class MovieCard extends StatelessWidget {
  final String imagePath;
  final String movieTitle;
  final String releaseYear;

  const MovieCard({
    super.key,
    required this.imagePath,
    required this.movieTitle,
    required this.releaseYear,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        ClipRRect(
          borderRadius: BorderRadius.circular(8),
          child: Image.asset(
            imagePath,
            height: 190,

            width: double.infinity,
            fit: BoxFit.cover,
          ),
        ),
        SizedBox(height: 8),
        Text(
          movieTitle,
          style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
        ),
        Text(
          "($releaseYear)",
          style: TextStyle(fontSize: 12),
        ),
      ],
    );
  }
}