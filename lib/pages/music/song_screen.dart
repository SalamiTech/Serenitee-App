import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:just_audio/just_audio.dart';
import 'package:mental_health/widgets/seekbar.dart';
import 'package:rxdart/rxdart.dart' as rxdart;
import '../../ models/song_model.dart';
import '../../widgets/player_buttons.dart';

class SongScreenPage extends StatefulWidget {
  const SongScreenPage({super.key});

  @override
  State<SongScreenPage> createState() => _SongScreenPageState();
}

class _SongScreenPageState extends State<SongScreenPage> {
  AudioPlayer audioPlayer = AudioPlayer();
  Song song = Song.song[0];

  @override
  void initState() {
    super.initState();

    audioPlayer.setAudioSource(ConcatenatingAudioSource(children: [
      AudioSource.uri(
        Uri.parse('asset:///${song.url}'),
      ),
    ]));
  }

  @override
  void dispose() {
    audioPlayer.dispose();
    super.dispose();
  }

  Stream<SeekBarData> get _seekBarDataStream =>
      rxdart.Rx.combineLatest2<Duration, Duration?, SeekBarData>(
          audioPlayer.positionStream, audioPlayer.durationStream, (
        Duration position,
        Duration? duration,
      ) {
        return SeekBarData(
          position,
          duration ?? Duration.zero,
        );
      });

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
                      _MusicPlayer(
                          seekBarDataStream: _seekBarDataStream,
                          audioPlayer: audioPlayer),
                      const SizedBox(
                        height: 30,
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

class _MusicPlayer extends StatelessWidget {
  const _MusicPlayer({
    super.key,
    required Stream<SeekBarData> seekBarDataStream,
    required this.audioPlayer,
  }) : _seekBarDataStream = seekBarDataStream;

  final Stream<SeekBarData> _seekBarDataStream;
  final AudioPlayer audioPlayer;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20.0, vertical: 40.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          StreamBuilder<SeekBarData>(
            stream: _seekBarDataStream,
            builder: (context, snapshot) {
              final positionData = snapshot.data;
              return SeekBar(
                position: positionData?.position ?? Duration.zero,
                duration: positionData?.duration ?? Duration.zero,
                onChangedEnd: audioPlayer.seek,
              );
            },
          ),
          PlayerButtons(audioPlayer: audioPlayer)
        ],
      ),
    );
  }
}
