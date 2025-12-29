class Chapter {
  final String id;
  final String workId;
  final int number;
  final String title;
  final String content;
  final int wordsCount;
  final DateTime publishedAt;

  Chapter({
    required this.id,
    required this.workId,
    required this.number,
    required this.title,
    required this.content,
    required this.wordsCount,
    required this.publishedAt,
  });

  // Calcular tiempo estimado de lectura (250 palabras por minuto)
  int get readingTimeMinutes => (wordsCount / 250).ceil();
}