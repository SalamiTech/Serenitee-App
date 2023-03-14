import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:mental_health/Onboarding%20Pages/onboarding_screen.dart';
import 'package:mental_health/pages/home_page.dart';
import 'package:mental_health/pages/music/music_select.dart';
import 'package:mental_health/pages/music/song_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      home: MusicSelectScreen(),
      getPages: [
        GetPage(name: '/', page: () => const HomeScreen()),
        GetPage(name: '/song', page: () => const HomeScreen()),
        GetPage(name: '/', page: () => const HomeScreen()),
      ],
    );
  }
}
