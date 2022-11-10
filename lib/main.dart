import 'package:flutter/material.dart';
import '/details_screen.dart';
import '/my_home_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const MyHomePage(),
      routes: {
        DetailsScreen.route: (ctx) => const DetailsScreen(),
      },
    );
  }
}
