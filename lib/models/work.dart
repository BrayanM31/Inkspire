import 'chapter.dart';

class Work {
  final String id;
  final String title;
  final String authorId;
  final String authorName;
  final String summary;
  final String coverUrl;
  final List<String> tags;
  final List<String> genres;
  final String rating;
  final String status;
  final int chaptersCount;
  final int likesCount;
  final int commentsCount;
  final int viewsCount;
  final DateTime publishedAt;
  final DateTime? lastUpdated;
  final List<Chapter> chapters;

  Work({
    required this.id,
    required this.title,
    required this.authorId,
    required this.authorName,
    required this.summary,
    required this.coverUrl,
    required this.tags,
    required this.genres,
    required this.rating,
    required this.status,
    required this.chaptersCount,
    required this.likesCount,
    required this.commentsCount,
    required this.viewsCount,
    required this.publishedAt,
    this.lastUpdated,
    required this.chapters,
  });

  // Calcular total de palabras
  int get totalWords {
    return chapters.fold(0, (sum, chapter) => sum + chapter.wordsCount);
  }

  // Rating simulado
  double get averageRating {
    return 4.2 + (likesCount % 8) / 10;
  }
}