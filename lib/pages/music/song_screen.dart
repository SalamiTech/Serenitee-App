import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class SongScreenPage extends StatelessWidget {
  const SongScreenPage({super.key});

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
                            Icons.favorite,
                            color: Colors.green,
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
                  const SizedBox(
                    height: 40,
                  ),
                  Column(
                    children: [
                      Slider(
                        min: 0,
                        max: 100,
                        value: 40,
                        onChanged: (value) {},
                        activeColor: Colors.green,
                        inactiveColor: Colors.grey,
                      ),
                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 25),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                              "1:25",
                              style: TextStyle(
                                color: Colors.black.withOpacity(0.6),
                                fontWeight: FontWeight.w500,
                                fontSize: 12,
                              ),
                            ),
                            Text(
                              "3:05",
                              style: TextStyle(
                                color: Colors.black.withOpacity(0.6),
                                fontWeight: FontWeight.w500,
                                fontSize: 12,
                              ),
                            ),
                          ],
                        ),
                      ),
                      const SizedBox(
                        height: 30,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: [
                          Icon(
                            Icons.shuffle,
                            color: Colors.black.withOpacity(0.6),
                            size: 20,
                          ),
                          Icon(
                            CupertinoIcons.forward_end_fill,
                            color: Colors.black.withOpacity(0.6),
                            size: 28,
                          ),
                          Container(
                            alignment: Alignment.center,
                            height: 55,
                            width: 55,
                            decoration: BoxDecoration(
                              color: Colors.green,
                              borderRadius: BorderRadius.circular(30),
                            ),
                            child: const Icon(
                              Icons.play_arrow,
                              color: Colors.white,
                              size: 40,
                            ),
                          ),
                          Icon(
                            CupertinoIcons.backward_end_fill,
                            color: Colors.black.withOpacity(0.6),
                            size: 28,
                          ),
                          Icon(
                            Icons.repeat,
                            color: Colors.black.withOpacity(0.6),
                            size: 20,
                          ),
                        ],
                      ),
                    ],
                  )
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
