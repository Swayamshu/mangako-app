import 'package:flutter/material.dart';
import 'package:manga_ko/models/home.dart';

class BannerCard extends StatefulWidget {
  final BannerData bannerData;

  const BannerCard({super.key, required this.bannerData});

  @override
  State<BannerCard> createState() => _BannerCardState();
}

class _BannerCardState extends State<BannerCard> {
  @override
  Widget build(BuildContext context) {
    Size screenSize = MediaQuery.of(context).size;

    return GestureDetector(
      onTap: () {
        Navigator.pushNamed(context, '/manga');
      },
      child: SizedBox(
        width: screenSize.width,
        child: Stack(
          children: <Widget>[
            Positioned(
              top: 0,
              left: 0,
              right: 0,
              bottom: 0,
              child: Image.asset(
                  widget.bannerData.imageUrl,
                  fit: BoxFit.cover
              ),
            ),
            Container(
              decoration: BoxDecoration(
                gradient: LinearGradient(
                  begin: Alignment.topCenter,
                  end: Alignment.bottomCenter,
                  colors: [
                    Colors.transparent,
                    Colors.black.withOpacity(1),
                  ],
                ),
              ),
            ),
            Positioned(
              top: 280,
              left: 0,
              child: Padding(
                padding: const EdgeInsets.all(13.0),
                child: SizedBox(
                  width: screenSize.width * 0.95,
                  height: screenSize.height * 0.2,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        widget.bannerData.title,
                        style: const TextStyle(
                          color: Colors.white,
                          fontFamily: 'Impact',
                          fontSize: 42,
                        ),
                      ),
                      const SizedBox(height: 5),
                      Text(
                        widget.bannerData.description,
                        style: const TextStyle(
                          color: Colors.white,
                          fontFamily: 'Gilroy',
                          fontWeight: FontWeight.w500,
                          fontSize: 14,
                        ),
                      )
                    ],
                  ),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
