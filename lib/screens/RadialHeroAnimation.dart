import 'package:flutter/material.dart';

import '../utils/imageString.dart';

class RadialHeroAnimation extends StatefulWidget {
  const RadialHeroAnimation({Key? key}) : super(key: key);

  @override
  State<RadialHeroAnimation> createState() => _RadialHeroAnimationState();
}

class _RadialHeroAnimationState extends State<RadialHeroAnimation> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Radial Animation"),
      ),
      body: Container(
        padding: const EdgeInsets.all(32.0),
        alignment: FractionalOffset.bottomLeft,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            _buildHero(context, ImageString.image1, "Profile 1"),
            _buildHero(context, ImageString.image2, "Profile 2"),
            _buildHero(context, ImageString.image3, "Profile 3"),
          ],
        ),
      ),
    );
  }

  Widget _buildHero(BuildContext context, String imageName, String description) {
    return SizedBox(
      width: 80,
      height: 80,
      child: Hero(
        createRectTween: (Rect? begin, Rect? end) {
          return MaterialRectCenterArcTween(begin: begin, end: end);
        },
        tag: imageName,
        child: ClipOval(
          child: Center(
            child: SizedBox(
              width: 60,
              height: 60,
              child: GestureDetector(
                onTap: () {
                  Navigator.of(context).push(
                    PageRouteBuilder<void>(
                      pageBuilder: (context, animation, secondaryAnimation) {
                        return AnimatedBuilder(
                            animation: animation,
                            builder: (context, child) {
                              return Opacity(
                                opacity: const Interval(0.0, 0.75, curve: Curves.fastOutSlowIn).transform(animation.value),
                                child: Container(
                                  color: Theme.of(context).canvasColor,
                                  child: Center(
                                    child: Card(
                                      elevation: 8.0,
                                      child: Column(
                                        mainAxisSize: MainAxisSize.min,
                                        children: [
                                          SizedBox(
                                            width: 250,
                                            height: 250,
                                            child: Hero(
                                              createRectTween: (Rect? begin, Rect? end) {
                                                return MaterialRectCenterArcTween(begin: begin, end: end);
                                              },
                                              tag: imageName,
                                              child: ClipOval(
                                                child: Center(
                                                  child: SizedBox(
                                                    width: 60,
                                                    height: 60,
                                                    child: GestureDetector(
                                                      onTap: () {
                                                        Navigator.pop(context);
                                                      },
                                                      child: ClipRect(
                                                        child: Image.network(imageName),
                                                      ),
                                                    ),
                                                  ),
                                                ),
                                              ),
                                            ),
                                          ),
                                          Text(
                                            description,
                                            style: const TextStyle(fontWeight: FontWeight.bold),
                                            textScaleFactor: 3.0,
                                          ),
                                          const SizedBox(height: 16.0),
                                        ],
                                      ),
                                    ),
                                  ),
                                ),
                              );
                            });
                      },
                    ),
                  );
                },
                child: ClipRect(
                  child: Image.network(imageName),
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
