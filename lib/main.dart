import 'package:appstoreclone/config/theme/apptheme.dart';
import 'package:appstoreclone/presentation/pages/homepage/homepage.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: theme(),
      debugShowCheckedModeBanner: false,
      home: const HomePage(),
    );
  }
}
