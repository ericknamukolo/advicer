import 'package:flutter/material.dart';

import '../core/widgets/advice_field.dart';

class AdvicerScreen extends StatelessWidget {
  const AdvicerScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Advicer'),
        centerTitle: true,
      ),
      body: Padding(
        padding: const EdgeInsets.all(15.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            SizedBox(),
            AdviceField(advice: 'Your advice is waiting for you!'),
            TextButton(onPressed: () {}, child: Text('Get Advice')),
          ],
        ),
      ),
    );
  }
}
