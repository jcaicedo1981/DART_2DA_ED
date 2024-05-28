import 'package:flutter/material.dart';

class ListsScreen extends StatelessWidget {
  const ListsScreen({super.key});

  static String routeName = '/lists-screen';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          "Single Child Scroll View",
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
