import 'package:flutter/material.dart';
import 'package:hadith_app/screens/splashScreen.dart';

void main(List<String> args) {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Azkar',
      home: SplashScreen(),
      debugShowCheckedModeBanner: false,
    );
  }
}
