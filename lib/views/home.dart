import "package:flutter/material.dart";
import "package:manga_ko/components/carousel.dart";
import "package:manga_ko/data/home.dart";
import "../components/banner_widget.dart";

class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
            "Manga-Ko",
          style: TextStyle(
            color: Colors.white,
            fontFamily: 'GangOfThree',
            fontSize: 30,
          ),
        ),
        backgroundColor: Colors.transparent,
        elevation: 0.0,
      ),
      extendBodyBehindAppBar: true,
      extendBody: true,
      backgroundColor: Colors.black87,
      body: SingleChildScrollView(
        child: Column(
          children: [
            const BannerWidget(),
            Carousel(
                carouselTitle: 'Jump back in',
              cards: getTrendingManga(),
            ),
            Carousel(
              carouselTitle: 'Trending',
              cards: getTrendingManga(),
            ),
          ],
        ),
      ),
    );
  }
}


