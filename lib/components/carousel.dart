import 'package:flutter/material.dart';
import 'package:manga_ko/components/carousel_card.dart';
import 'package:manga_ko/models/home.dart';

class Carousel extends StatefulWidget {
  final String carouselTitle;
  final List<CardData> cards;

  const Carousel({super.key, required this.carouselTitle, required this.cards});

  @override
  State<Carousel> createState() => _CarouselState();
}

class _CarouselState extends State<Carousel> {
  @override
  Widget build(BuildContext context) {
    Size screenSize = MediaQuery.of(context).size;

    return Padding(
      padding: const EdgeInsets.fromLTRB(0, 16.0, 0, 0),
      child: SizedBox(
        width: screenSize.width,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: const EdgeInsets.fromLTRB(12.0, 0, 0, 0),
              child: Text(
                widget.carouselTitle,
                style: const TextStyle(
                  fontFamily: 'Gilroy',
                  fontWeight: FontWeight.bold,
                  color: Colors.white,
                  fontSize: 24,
                ),
              ),
            ),
            SizedBox(
              height: screenSize.height * 0.235, // Set the height of the list view
              child: ListView.builder(
                scrollDirection: Axis.horizontal,
                itemCount: widget.cards.length,
                itemBuilder: (BuildContext context, int index) {
                  return CarouselCard(
                    title: widget.cards[index].title,
                    imageUrl: widget.cards[index].imageUrl,
                  );
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}
