import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Select here"),
      ),
      body: Center(
        child: Column(
          children: [
            ElevatedButton(
              onPressed: () {
                Navigator.pushNamed(context, "SimpleHero");
              },
              child: const Text("Simple hero animation"),
            ),
            ElevatedButton(
              onPressed: () {
                Navigator.pushNamed(context, "RadialHero");
              },
              child: const Text("Radial hero animation"),
            ),
            ElevatedButton(
              onPressed: () {
                Navigator.pushNamed(context, "animatedContainer");
              },
              child: const Text("Animated container"),
            ),
          ],
        ),
      ),
    );
  }
}
