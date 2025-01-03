import 'package:flutter/material.dart';

import 'application/screens/advicer_screen.dart';

void main() {
  runApp(const AdvicerApp());
}

class AdvicerApp extends StatelessWidget {
  const AdvicerApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: const AdvicerScreen(),
    );
  }
}
