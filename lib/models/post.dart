import 'comment.dart';

class Post {
  final String id;
  final String authorId;
  final String authorName;
  final String? authorAvatarUrl;
  final String content;
  final String? imageUrl;
  final List<String> likedByIds;
  final List<Comment> comments;
  final DateTime createdAt;

  Post({
    required this.id,
    required this.authorId,
    required this.authorName,
    this.authorAvatarUrl,
    required this.content,
    this.imageUrl,
    required this.likedByIds,
    required this.comments,
    required this.createdAt,
  });

  // Obtener número de likes
  int get likesCount => likedByIds.length;

  // Obtener número de comentarios
  int get commentsCount => comments.length;

  // Verificar si un usuario dio like
  bool isLikedBy(String userId) {
    return likedByIds.contains(userId);
  }
}
