import 'package:advicer/application/pages/advice/widgets/advice_field.dart';
import 'package:advicer/application/pages/advice/widgets/error_message.dart';
import 'package:flutter/material.dart';

class AdvicePage extends StatelessWidget {
  const AdvicePage({super.key});

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    return Scaffold(
      appBar: AppBar(
        backgroundColor: theme.primaryColor,
        title: Text(
          'Advice',
          style: theme.textTheme.headlineMedium,
        ),
        centerTitle: true,
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(vertical: 30),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            const Expanded(
              // child: Center(
              //   child: SizedBox(
              //     height: 40,
              //     width: 40,
              //     child: CircularProgressIndicator(),
              //   ),
              // ),
              child: ErrorMessage(message: 'Something went wrong'),
              // child: Center(
              //     child: AdviceField(advice: 'This is an example advice bro')),
            ),
            Center(
              child: TextButton(
                onPressed: () {},
                child: const Text('Get Advice'),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
