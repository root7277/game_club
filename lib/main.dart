import 'package:flutter/material.dart';
import 'package:game_club/screen/one_screen.dart';
import 'package:game_club/screen/two_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      initialRoute: 'one_screen',
      routes: {
        'one_screen':(context) => const OneScreen(),
        'two_screen':(context) => const TwoScreen(),
      },
    );
  }
}