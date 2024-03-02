import 'package:flutter/material.dart';
import 'package:movie_app/home.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: Container(
          width: double.infinity,
          height: double.infinity,
          decoration: const BoxDecoration(
              image: DecorationImage(
                  image: AssetImage("assets/images/R.jpg"), fit: BoxFit.cover)),
          child: const HomePage(),
        ),
      ),
    );
  }
}
