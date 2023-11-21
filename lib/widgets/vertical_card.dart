import 'package:flutter/material.dart';

class VerticalCard extends StatelessWidget {
  const VerticalCard({super.key, required this.photo, required this.width, required this.height});
  final String photo;
  final double width;
  final double height;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(right: 8),
      width: width,
      height: height,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(4),
      ),
      child: ClipRRect(
        borderRadius: BorderRadius.circular(4),
        child: Image.asset(
          "assets/posters/$photo.jpg",
          fit: BoxFit.cover,
        ),
      ),
    );
  }
}
