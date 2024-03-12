import 'package:flutter/material.dart';
import 'package:manga_ko/views/home.dart';
import 'package:manga_ko/views/manga.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: "Manga-Ko App",
      initialRoute: '/',
      routes: {
        '/': (context) => const Home(),
        '/manga' : (context) => const Manga(),
      },
    );
  }
}


