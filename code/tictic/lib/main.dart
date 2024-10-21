import 'package:flutter/material.dart';
import 'package:tictic/screens/welcome.dart';
import 'package:tictic/style/colors.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'TicTic',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: kMainColor),
        useMaterial3: true,
      ),
      home: const Welcome(),
    );
  }
}
