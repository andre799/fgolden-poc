import 'package:flutter/material.dart';
import 'package:flutter_golden_tester/screens/home_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Golden Tester',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.amber),
        useMaterial3: true,
      ),
      home: const HomeScreen(text: 'Hi! Testing... ', hexColor: '#FFE600', iconAlignment: 'topcenter'),
    );
  }
}
