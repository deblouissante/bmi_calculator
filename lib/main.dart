import 'package:flutter/material.dart';

import 'input_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        // This is the theme of your application.

        colorScheme:
            ColorScheme.fromSeed(seedColor: Color.fromARGB(255, 148, 25, 0)),
        useMaterial3: true,
      ),
      home: const InputPage(title: 'BMI CALCULATOR'),
    );
  }
}
