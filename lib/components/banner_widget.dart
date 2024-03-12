import "package:carousel_slider/carousel_slider.dart";
import "package:flutter/material.dart";
import "package:manga_ko/components/banner_card.dart";
import "package:manga_ko/models/home.dart";

class BannerWidget extends StatefulWidget {
  final List<BannerData> bannerManga;

  const BannerWidget({super.key, required this.bannerManga});

  @override
  State<BannerWidget> createState() => _BannerWidgetState();
}

class _BannerWidgetState extends State<BannerWidget> {
  @override
  Widget build(BuildContext context) {
    Size screenSize = MediaQuery.of(context).size;

    return SizedBox(
      width: screenSize.width,
      height: screenSize.height * 0.45,
      child: CarouselSlider.builder(
        itemCount: widget.bannerManga.length,
        itemBuilder: (BuildContext context, int index, int realIndex) {
          return BannerCard(
            bannerData: widget.bannerManga[index],
          );
        },
        options: CarouselOptions(
          autoPlay: true,
          viewportFraction: 1,
          height: screenSize.height * 0.45,
          autoPlayAnimationDuration: const Duration(seconds: 2),
          autoPlayInterval: const Duration(seconds: 8)
        ),
      ),
    );
  }
}