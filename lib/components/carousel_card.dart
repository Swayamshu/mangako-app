import 'package:flutter/material.dart';

class CarouselCard extends StatelessWidget {
  final String imageUrl;
  final String title;

  const CarouselCard({super.key, required this.title, required this.imageUrl});

  @override
  Widget build(BuildContext context) {
    Size screenSize = MediaQuery.of(context).size;

    return Padding(
      padding: const EdgeInsets.fromLTRB(8.0, 12.0, 8.0, 12.0),
      child: GestureDetector(
        onTap: () {
          Navigator.pushNamed(context, '/manga');
        },
        child: SizedBox(
          width: screenSize.width * 0.37,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              SizedBox(
                width: screenSize.width * 0.4,
                height: screenSize.height * 0.18,
                child: Image.asset(
                    imageUrl,
                    fit: BoxFit.fitWidth,
                )
              ),
              Text(
                title,
                style: const TextStyle(
                  color: Colors.white,
                  fontSize: 16,
                  fontFamily: 'Gilroy',
                  fontWeight: FontWeight.bold,
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
