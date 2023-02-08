import 'package:flutter/material.dart';

class SecondPage extends StatefulWidget {
  const SecondPage({Key? key}) : super(key: key);

  @override
  State<SecondPage> createState() => _SecondPageState();
}

class _SecondPageState extends State<SecondPage> {
  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    double height = MediaQuery.of(context).size.height;
    return Scaffold(
      appBar: AppBar(
        title: const Text("Simple Hero widget second page"),
      ),
      body: Center(
        child: SizedBox(
          width: width,
          child: Hero(
            tag: "Hero effect",
            child: Image.network(
              "https://cdn.pixabay.com/photo/2015/04/23/22/00/tree-736885__480.jpg",
              fit: BoxFit.contain,
            ),
          ),
        ),
      ),
    );
  }
}
