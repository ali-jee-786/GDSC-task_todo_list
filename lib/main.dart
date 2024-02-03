import 'package:flutter/material.dart';
import 'package:todo_app_using_sqlite/screen/home_screen.dart';

final myTheme = ThemeData(
    useMaterial3: true,
    colorScheme: const ColorScheme.dark(brightness: Brightness.dark));

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: myTheme,
      home: HomeScreen(),
    );
  }
}
