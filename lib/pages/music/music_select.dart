import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class MusicSelectScreen extends StatelessWidget {
  const MusicSelectScreen({super.key});

  @override
  Widget build(BuildContext context) {
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
                            fontSize: 18, fontWeight: FontWeight.w400),
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
                SizedBox(height: 15),
                Row(
                  children: const [
                    Padding(
                      padding: EdgeInsets.all(8.0),
                      child: Text(
                        ' Music Categories',
                        textAlign: TextAlign.left,
                        style: TextStyle(
                            fontSize: 15, fontWeight: FontWeight.w500),
                      ),
                    ),
                  ],
                )
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
