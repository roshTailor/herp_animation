import 'package:flutter/material.dart';

class SimpleHero extends StatefulWidget {
  const SimpleHero({Key? key}) : super(key: key);

  @override
  State<SimpleHero> createState() => _SimpleHeroState();
}

class _SimpleHeroState extends State<SimpleHero> {
  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    double height = MediaQuery.of(context).size.height;
    return Scaffold(
      appBar: AppBar(
        title: const Text("Simple Hero widget"),
      ),
      body: Center(
        child: SizedBox(
          width: width * 0.25,
          child: GestureDetector(
            onTap: () {
              Navigator.pushNamed(context, "secondPage");
            },
            child: Hero(
              tag: "Hero effect",
              child: Image.network(
                "https://cdn.pixabay.com/photo/2015/04/23/22/00/tree-736885__480.jpg",
                fit: BoxFit.contain,
              ),
            ),
          ),
        ),
      ),
    );
  }
}
