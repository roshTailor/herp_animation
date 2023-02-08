import 'package:flutter/material.dart';
import 'package:herp_animation/screens/HomePage.dart';
import 'package:herp_animation/screens/RadialHeroAnimation.dart';
import 'package:herp_animation/screens/hero.dart';
import 'package:herp_animation/screens/secondPage.dart';

void main() {
  runApp(
    MaterialApp(
      debugShowCheckedModeBanner: false,
      routes: {
        '/': (context) => const HomePage(),
        'SimpleHero': (context) => const SimpleHero(),
        'secondPage': (context) => const SecondPage(),
        'RadialHero': (context) => const RadialHeroAnimation(),
      },
    ),
  );
}
