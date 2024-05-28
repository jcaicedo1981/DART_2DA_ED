import 'package:flutter/material.dart';

class SingleChidScreen extends StatelessWidget {
  const SingleChidScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Single Child')),
      body: SingleChildScrollView(
        child: Column(
          children: List.generate(
            500,
            (index) => Container(
              height: 100,
              color: Colors.red,
              child: Text("Fila: $index"),
            ),
          ),
        ),
      ),
    );
  }
}
