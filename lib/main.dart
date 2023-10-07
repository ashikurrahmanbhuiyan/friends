import 'package:flutter/material.dart';
import 'package:friends/screens/auth/login_screen.dart';
import 'package:friends/screens/home_screen.dart';

late Size mq;

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});


  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Friends',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
        appBarTheme: const AppBarTheme(
          elevation: 10,
          iconTheme: IconThemeData(color: Colors.white, size: 49.0),
          centerTitle: true,
            titleTextStyle: TextStyle(
              color: Colors.white70,
              fontSize: 30.0,
              fontStyle: FontStyle.italic,
            ),
          backgroundColor: Colors.deepPurple,
          ),
          
        ),
      
      home: login_screen(),
    );
  }
}
