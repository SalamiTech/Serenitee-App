import 'package:flutter/material.dart';
import 'package:flutter_native_splash/flutter_native_splash.dart';
import 'package:get/get.dart';
import 'package:mental_health/Onboarding%20Pages/onboarding_screen.dart';
import 'package:mental_health/authentication%20/screens%20/welcome.dart';
import 'package:mental_health/pages/home_page.dart';
import 'package:mental_health/pages/music/music_select.dart';
import 'package:mental_health/pages/music/playlist_screen.dart';
import 'package:mental_health/pages/music/song_screen.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      home: const WelcomeScreen(),
      getPages: [
        GetPage(name: '/', page: () => const MusicSelectScreen()),
        GetPage(name: '/song', page: () => const SongScreenPage()),
        // GetPage(name: '/playlist', page: () => const PlaylistScreen()),
      ],
    );
  }
}
