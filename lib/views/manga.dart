import 'package:flutter/material.dart';

class Manga extends StatefulWidget {
  const Manga({Key? key}) : super(key: key);

  @override
  State<Manga> createState() => _MangaState();
}

class _MangaState extends State<Manga> {
  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Text('Manga'),
    );
  }
}
