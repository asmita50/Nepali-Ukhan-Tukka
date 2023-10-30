import 'package:flutter/material.dart';
import 'package:ukhan_tuka/screens/home_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'Nepali Ukkhana tukka',
        theme: ThemeData.dark(),
        home: const HomePage());
  }
}
