import 'package:flutter/material.dart';

class InfinityScroll extends StatelessWidget {
  const InfinityScroll({super.key});

  static String routeName = '/infinity-scroll';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          "Infinity Scroll",
          style: TextStyle(
            color: Colors.white,
            fontSize: 25,
          ),
        ),
        backgroundColor: const Color.fromARGB(255, 14, 67, 98),
        centerTitle: false,
        // leading: const Icon(Icons.arrow_back_ios_sharp),
        iconTheme: const IconThemeData(
          color: Color.fromARGB(255, 0, 162, 255),
        ),
      ),
    );
  }
}
