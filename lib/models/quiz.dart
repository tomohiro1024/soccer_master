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

enum Country {
  japan,
  england,
}

enum Genre {
  teamLogo,
  playerName,
}
