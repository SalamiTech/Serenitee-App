class Song {
  final String title;
  final String description;
  final String url;
  final String coverUrl;

  Song(
      {required this.title,
      required this.description,
      required this.url,
      required this.coverUrl});

  static List<Song> song = [
    Song(
        title: 'Lofi Sleep',
        description: 'Relaxing Music',
        url: 'assets/first.mp3',
        coverUrl: 'assets/frame1.png'),
    Song(
        title: 'Calm Strings',
        description: 'Calm Music',
        url: 'assets/second.mp3',
        coverUrl: 'assets/frame1.png'),
    Song(
        title: 'Cheer Up',
        description: 'Soul Music',
        url: 'assets/third.mp3',
        coverUrl: 'assets/frame1.png'),
  ];
}
