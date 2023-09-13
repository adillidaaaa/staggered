import 'package:flutter/material.dart';

import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  final url = "https://dog.ceo/api/breeds/image/random";
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        shape: const RoundedRectangleBorder(
            borderRadius: BorderRadius.only(
                bottomLeft: Radius.circular(0),
                bottomRight: Radius.circular(0))),
        title: const Text("staggered"),
        titleTextStyle: TextStyle(color: Color.fromARGB(255, 248, 200, 200)),
        backgroundColor: Color.fromARGB(255, 43, 43, 39),
      ),
      backgroundColor: Color.fromARGB(255, 255, 254, 253),
      body: SingleChildScrollView(
        child: StaggeredGrid.count(
          crossAxisCount: 2,
          crossAxisSpacing: 5,
          mainAxisSpacing: 5,
          children: [
            Image.asset("images/IMG-20230204-WA0073.jpg"),
            Image.asset("images/FullSizeRender-326 (1).jpg"),
            Image.asset("images/FullSizeRender-185 (2).jpg"),
            Image.asset("images/IMG-20230204-WA0073.jpg"),
            Image.asset("images/IMG_2392.jpg"),
            Image.asset("images/FullSizeRender-26.jpg"),
            Image.asset("images/FullSizeRender-21.jpg"),
            Image.asset("images/FullSizeRender-26.jpg"),
          ],
        ),
      ),
    );
  }
}
