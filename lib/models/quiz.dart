class Quiz {
  final String question;
  final List<String> options;
  final int correctIndex;
  final String? imageUrl;

  Quiz({
    required this.question,
    required this.options,
    required this.correctIndex,
    this.imageUrl,
  });
}

enum League {
  jLeague,
  premierLeague,
}

enum Genre {
  teamLogo,
  playerName,
  stadium,
}

enum Level {
  level1,
  level2,
  level3,
}
