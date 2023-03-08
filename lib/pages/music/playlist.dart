import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class PlayListPage extends StatelessWidget {
  const PlayListPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Scaffold(
          backgroundColor: Colors.white,
          body: SafeArea(
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
                          CupertinoIcons.chevron_down,
                          color: Colors.black,
                        ),
                      ),
                      const Text("Now Playing"),
                      InkWell(
                        onTap: () {
                          // Navigator.pop(context);
                        },
                        child: const Icon(
                          CupertinoIcons.music_note_list,
                          color: Colors.black,
                        ),
                      ),
                    ],
                  ),
                ),
                const SizedBox(
                  height: 10,
                ),
                ClipRRect(
                  borderRadius: BorderRadius.circular(40),
                  child: Image.asset(
                    "assets/frame1.png",
                    width: 350,
                    height: 300,
                    fit: BoxFit.cover,
                  ),
                ),
                const SizedBox(
                  height: 20,
                ),
                Column(
                  children: [
                    Padding(
                      padding: const EdgeInsets.symmetric(
                        vertical: 5,
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
                              CupertinoIcons.heart,
                              color: Colors.black,
                            ),
                          ),
                          const Text(
                            "Lo-fi Playlist",
                            style: TextStyle(
                                fontWeight: FontWeight.bold, fontSize: 18),
                          ),
                          InkWell(
                            onTap: () {
                              // Navigator.pop(context);
                            },
                            child: const Icon(
                              Icons.more_horiz,
                              color: Colors.black,
                            ),
                          ),
                        ],
                      ),
                    ),
                    const Text(
                      "Relaxing Music",
                      style: TextStyle(color: Colors.grey, fontSize: 12),
                    ),
                  ],
                ),
              ],
            ),
          )),
    );
  }
}
