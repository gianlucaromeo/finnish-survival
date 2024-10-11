import 'package:finnish_survival/config/theme.dart';
import 'package:finnish_survival/screens/learn_page.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData().copyWith(
        textTheme: AppFonts.textTheme,
      ),
      home: const LearnPage(),
    );
  }
}
