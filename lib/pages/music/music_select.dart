import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:mental_health/%20models/song_model.dart';

import '../../widgets/section_header.dart';
import '../../widgets/song_card.dart';

class MusicSelectScreen extends StatelessWidget {
  const MusicSelectScreen({super.key});

  @override
  Widget build(BuildContext context) {
    List<Song> songs = Song.song;
    return Container(
      child: Scaffold(
        backgroundColor: Colors.white,
        bottomNavigationBar: ClipRRect(
          borderRadius: const BorderRadius.only(
            topLeft: Radius.circular(24),
            topRight: Radius.circular(24),
          ),
          child: Container(
            child: const _CustomNavBar(),
          ),
        ),
        body: SingleChildScrollView(
          child: SafeArea(
            child: Column(
              children: [
                Padding(
                  padding: const EdgeInsets.symmetric(
                    vertical: 20,
                    horizontal: 25,
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      InkWell(
                        onTap: () {
                          // Navigator.pop(context);
                        },
                        child: const Icon(
                          CupertinoIcons.chevron_left,
                          color: Colors.black,
                        ),
                      ),
                      const Text(
                        "Music & Podcast",
                        style: TextStyle(
                            fontSize: 20, fontWeight: FontWeight.w400),
                      ),
                      const SizedBox(
                        height: 20,
                      ),
                    ],
                  ),
                ),
                ClipRRect(
                  borderRadius: BorderRadius.circular(30),
                  child: Image.asset(
                    "assets/musi2.png",
                    width: 360,
                    height: 150,
                    fit: BoxFit.cover,
                  ),
                ),
                const SizedBox(height: 15),
                const Padding(
                  padding: EdgeInsets.symmetric(horizontal: 7),
                  child: Align(
                    alignment: Alignment.topLeft,
                    child: Text(
                      ' Music Categories',
                      style:
                          TextStyle(fontSize: 18, fontWeight: FontWeight.w400),
                    ),
                  ),
                ),
                const SizedBox(
                  height: 15,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    const SizedBox(width: 10),
                    Expanded(
                        child: ElevatedButton(
                            onPressed: () {},
                            child: Text("Strings"),
                            style: ElevatedButton.styleFrom(
                              backgroundColor: Colors.green,
                            ))),
                    const SizedBox(width: 10),
                    Expanded(
                        child: ElevatedButton(
                            onPressed: () {},
                            child: Text("Lo-Fi"),
                            style: ElevatedButton.styleFrom(
                              backgroundColor: Colors.green,
                            ))),
                    const SizedBox(width: 10),
                    Expanded(
                        child: ElevatedButton(
                            onPressed: () {},
                            child: Text("Cools"),
                            style: ElevatedButton.styleFrom(
                              backgroundColor: Colors.green,
                            ))),
                    const SizedBox(width: 10),
                    Expanded(
                        child: ElevatedButton(
                            onPressed: () {},
                            child: Text("Piano"),
                            style: ElevatedButton.styleFrom(
                              backgroundColor: Colors.green,
                            ))),
                    const SizedBox(width: 10),
                  ],
                ),
                const SizedBox(height: 10),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Column(
                    children: const [
                      SectionHeader(title: ' Recommended Music'),
                    ],
                  ),
                ),
                const SizedBox(height: 10),
                SizedBox(
                  height: MediaQuery.of(context).size.height * 0.27,
                  child: ListView.builder(
                      scrollDirection: Axis.horizontal,
                      itemCount: songs.length,
                      itemBuilder: (context, index) {
                        return SongCard(
                          songs: songs[index],
                        );
                      }),
                ),
                //
                // Podcast Session
                //
                const SizedBox(height: 15),
                const Padding(
                  padding: EdgeInsets.symmetric(horizontal: 7),
                  child: Align(
                    alignment: Alignment.topLeft,
                    child: Text(
                      ' Podcast Categories',
                      style:
                          TextStyle(fontSize: 18, fontWeight: FontWeight.w400),
                    ),
                  ),
                ),
                const SizedBox(
                  height: 15,
                ),
                // Podcast sessions tabs
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    const SizedBox(width: 10),
                    Expanded(
                        child: ElevatedButton(
                            onPressed: () {},
                            child: Text("Talks"),
                            style: ElevatedButton.styleFrom(
                              backgroundColor: Colors.green,
                            ))),
                    const SizedBox(width: 10),
                    Expanded(
                        child: ElevatedButton(
                            onPressed: () {},
                            child: Text("Stress"),
                            style: ElevatedButton.styleFrom(
                              backgroundColor: Colors.green,
                            ))),
                    const SizedBox(width: 10),
                    Expanded(
                        child: ElevatedButton(
                            onPressed: () {},
                            child: Text("Calm"),
                            style: ElevatedButton.styleFrom(
                              backgroundColor: Colors.green,
                            ))),
                    const SizedBox(width: 10),
                    Expanded(
                        child: ElevatedButton(
                            onPressed: () {},
                            child: Text("Inspire"),
                            style: ElevatedButton.styleFrom(
                              backgroundColor: Colors.green,
                            ))),
                    const SizedBox(width: 10),
                  ],
                ),
                const SizedBox(height: 10),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Column(
                    children: const [
                      SectionHeader(title: ' Recommended Podcast'),
                    ],
                  ),
                ),
                const SizedBox(height: 10),
                SizedBox(
                  height: MediaQuery.of(context).size.height * 0.27,
                  child: ListView.builder(
                      scrollDirection: Axis.horizontal,
                      itemCount: songs.length,
                      itemBuilder: (context, index) {
                        return SongCard(
                          songs: songs[index],
                        );
                      }),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

class _CustomNavBar extends StatelessWidget {
  const _CustomNavBar({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return BottomNavigationBar(
      type: BottomNavigationBarType.fixed,
      unselectedItemColor: Colors.grey,
      selectedItemColor: Colors.green,
      items: const [
        BottomNavigationBarItem(
          icon: Icon(Icons.home_outlined),
          label: 'Home',
        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.balance),
          label: 'Balance',
        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.people_alt_outlined),
          label: 'Therapist',
        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.meeting_room_outlined),
          label: 'Workshops',
        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.person_outline),
          label: 'Profile',
        ),
      ],
    );
  }
}
