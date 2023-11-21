import 'package:flutter/material.dart';

class LogoCard extends StatelessWidget {
  const LogoCard({super.key, required this.photo});
  final String photo;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(4),
      width: 66,
      height: 66,
      decoration: BoxDecoration(
        gradient: const LinearGradient(
          begin: Alignment.bottomCenter,
          end: Alignment.topCenter,
          colors: [
            Color.fromARGB(255, 29, 31, 41),
            Color.fromARGB(255, 65, 67, 82),
          ],
        ),
        border: Border.all(color: const Color(0xff1a1c29).withOpacity(0.2)),
        borderRadius: BorderRadius.circular(8),
      ),
      child: Image.asset("assets/logos/$photo.png"),
    );
  }
}
