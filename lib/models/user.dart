class User {
  final String id;
  final String username;
  final String email;
  final String? bio;
  final String? avatarUrl;
  final List<String> followersIds;
  final List<String> followingIds;
  final DateTime createdAt;

  User({
    required this.id,
    required this.username,
    required this.email,
    this.bio,
    this.avatarUrl,
    required this.followersIds,
    required this.followingIds,
    required this.createdAt,
  });

  // Método para obtener el número de seguidores
  int get followersCount => followersIds.length;

  // Método para obtener el número de seguidos
  int get followingCount => followingIds.length;

  // Método para verificar si sigue a otro usuario
  bool isFollowing(String userId) {
    return followingIds.contains(userId);
  }
}