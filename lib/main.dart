import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:parking/screen/home/homepage.dart';
import 'package:parking/screen/home/home.dart';
import 'package:parking/them.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: OurTheme().buildTheme(),
      home: Home(),
    );
  }
}
