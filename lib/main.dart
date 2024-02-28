import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_movie/pages/HomePage.dart';
import 'package:flutter_movie/pages/MoviePage.dart';
import 'package:flutter_movie/pages/categoryPage.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  void iniState() {
    SystemChrome.setEnabledSystemUIMode(SystemUiMode.immersiveSticky);

    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        scaffoldBackgroundColor: Color(0xFF0F111D),
      ),
      routes: {
        "/": (context) => HomePage(),
        "categoryPage": (context) => categoryPage(),
        "MoviePage": (context) => MoviePage(),
      },
    );
  }
}
