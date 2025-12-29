import 'package:flutter/material.dart';
import 'screen/main_navigation.dart';

void main() {
  runApp(const InkspireApp());
}

class InkspireApp extends StatelessWidget {
  const InkspireApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Inkspire',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primaryColor: const Color(0xFF8B4789),
        colorScheme: ColorScheme.fromSeed(
          seedColor: const Color(0xFF8B4789),
          brightness: Brightness.light,
        ),
        useMaterial3: true,
      ),
      darkTheme: ThemeData(
        primaryColor: const Color(0xFF8B4789),
        colorScheme: ColorScheme.fromSeed(
          seedColor: const Color(0xFF8B4789),
          brightness: Brightness.dark,
        ),
        useMaterial3: true,
      ),
      themeMode: ThemeMode.system,
      home: const MainNavigation(),
    );
  }
}