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
        description: '1hr:30mins',
        url: 'assets/first.mp3',
        coverUrl: 'assets/frame1.png'),
    Song(
        title: 'Calm Strings',
        description: '1hr:20mins',
        url: 'assets/second.mp3',
        coverUrl: 'assets/frame1.png'),
    Song(
        title: 'Cheer Up',
        description: '1hr:50mins',
        url: 'assets/third.mp3',
        coverUrl: 'assets/frame1.png'),
  ];
}
