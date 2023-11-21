import 'package:flutter/material.dart';

class BottomNav extends StatelessWidget {
  const BottomNav({super.key});

  @override
  Widget build(BuildContext context) {
    return NavigationBar(
      height: 60,
      labelBehavior: NavigationDestinationLabelBehavior.alwaysHide,
      backgroundColor: const Color(0xff1a1c29),
      selectedIndex: 0,
      indicatorColor: Colors.transparent,
      surfaceTintColor: const Color(0xff1a1c29),
      destinations: [
        const NavigationDestination(
          icon: Icon(Icons.home),
          label: '',
          selectedIcon: Icon(Icons.home, color: Colors.white, size: 30),
        ),
        NavigationDestination(
          icon: Icon(Icons.search, color: Colors.white.withOpacity(0.5), size: 30),
          label: '',
        ),
        NavigationDestination(
          icon: Icon(Icons.download, color: Colors.white.withOpacity(0.5), size: 30),
          label: '',
        ),
        NavigationDestination(
          icon: CircleAvatar(
            backgroundColor: Colors.white.withOpacity(0.5),
            radius: 15,
            child: Image.asset("assets/movies/homer.png", width: 26),
          ),
          label: '',
        ),
      ],
    );
  }
}
