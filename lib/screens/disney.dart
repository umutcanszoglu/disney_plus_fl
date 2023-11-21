import 'package:carousel_slider/carousel_slider.dart';
import 'package:disney/widgets/bottom_nav.dart';
import 'package:disney/widgets/carousel_card.dart';
import 'package:disney/widgets/logo_card.dart';
import 'package:disney/widgets/vertical_card.dart';
import 'package:flutter/material.dart';

class Disney extends StatelessWidget {
  const Disney({super.key});

  @override
  Widget build(BuildContext context) {
    var movies = ["loki", "gog", "solar", "brawn"];
    var logos = ["disney", "pixar", "marvel", "starwars", "national"];
    var posters = ["p1", "p2", "p3", "p4", "p5", "p6"];
    var posters2 = ["pp1", "pp2", "pp3", "pp4", "pp5", "pp6", "pp7"];

    return Container(
      decoration: const BoxDecoration(
        gradient: LinearGradient(
          begin: Alignment.bottomCenter,
          end: Alignment.topCenter,
          colors: [
            Color(0xff1a1c29),
            Color(0xff2e3045),
          ],
        ),
      ),
      child: Scaffold(
        backgroundColor: Colors.transparent,
        appBar: AppBar(
          backgroundColor: Colors.transparent,
          centerTitle: true,
          title: Image.asset("assets/logos/logo.png", width: 120),
        ),
        body: ListView(
          children: [
            const SizedBox(height: 8),
            CarouselSlider(
              options: CarouselOptions(
                viewportFraction: 0.88,
                enlargeFactor: 0.16,
                enlargeCenterPage: true,
                autoPlay: true,
                aspectRatio: 2,
              ),
              items: [
                ...movies.map(
                  (e) => CarouselCard(photo: e),
                ),
              ],
            ),
            const SizedBox(height: 16),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                ...logos.map(
                  (e) => Padding(
                    padding: const EdgeInsets.only(left: 8.0),
                    child: LogoCard(photo: e),
                  ),
                ),
                const SizedBox(width: 8),
              ],
            ),
            const SizedBox(height: 16),
            const Padding(
              padding: EdgeInsets.only(left: 26.0),
              child: Align(
                alignment: Alignment.centerLeft,
                child: Text(
                  "Disney+'ta Yeni",
                  style: TextStyle(
                    color: Colors.white,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
            ),
            const SizedBox(height: 8),
            SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Padding(
                padding: const EdgeInsets.only(left: 26.0),
                child: Row(
                  children: [
                    ...posters.map(
                      (e) => VerticalCard(
                        photo: e,
                        width: 80,
                        height: 120,
                      ),
                    ),
                  ],
                ),
              ),
            ),
            const SizedBox(height: 16),
            const Padding(
              padding: EdgeInsets.only(left: 26.0),
              child: Align(
                alignment: Alignment.centerLeft,
                child: Text(
                  "Bu Akşam İzlemek İsteyebileceklerin",
                  style: TextStyle(
                    color: Colors.white,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
            ),
            const SizedBox(height: 8),
            SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Padding(
                padding: const EdgeInsets.only(left: 26.0),
                child: Row(
                  children: [
                    ...posters2.map(
                      (e) => VerticalCard(
                        photo: e,
                        width: 160,
                        height: 220,
                      ),
                    ),
                  ],
                ),
              ),
            ),
            const SizedBox(height: 32),
          ],
        ),
        bottomNavigationBar: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            Divider(
              height: 0,
              color: Colors.white.withOpacity(0.05),
            ),
            const BottomNav(),
          ],
        ),
      ),
    );
  }
}
