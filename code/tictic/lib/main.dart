import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:tictic/firebase_options.dart';
import 'package:tictic/screens/register.dart';
import 'package:tictic/screens/welcome.dart';
import 'package:tictic/style/colors.dart';

Future<void> main() async {

  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );
  await FirebaseAuth.instance.setLanguageCode("fr");
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
