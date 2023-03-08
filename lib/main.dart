import 'package:flutter/material.dart';
import 'package:mental_health/Onboarding%20Pages/onboarding_screen.dart';
import 'package:mental_health/pages/music/playlist.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(fontFamily: 'PlayfairDisplay-VariableFont_wght'),
      debugShowCheckedModeBanner: false,
      home: const PlayListPage(),
    );
  }
}
