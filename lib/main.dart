import 'package:flutter/material.dart';
import 'package:kehoucars/connexion_screen.dart';
import 'package:kehoucars/inscription_screen.dart';
import 'package:kehoucars/search_screen.dart';
import 'package:kehoucars/welcome_screen.dart';
import 'package:kehoucars/welcome_screen2.dart';
import 'package:kehoucars/welcome_screen3.dart';
import 'package:kehoucars/widgets/search.dart';
import 'home_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: const HomeScreen()
    );
  }
}