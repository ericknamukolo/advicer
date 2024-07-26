import 'package:advicer/application/pages/advice/advice_page.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const Advicer());
}

class Advicer extends StatelessWidget {
  const Advicer({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
        home: Scaffold(
      body: AdvicePage(),
    ));
  }
}
