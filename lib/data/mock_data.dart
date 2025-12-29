import '../models/user.dart';
import '../models/work.dart';
import '../models/chapter.dart';
import '../models/post.dart';
import '../models/comment.dart';

// ============================================================================
// USUARIOS MOCK
// ============================================================================

final List<User> mockUsers = [
  User(
    id: 'user1',
    username: 'SaraWrites',
    email: 'sara@inkspire.com',
    bio: 'Escritora de fantasía épica 🐉 | Amante del café ☕ | 23 años',
    avatarUrl: 'https://i.pravatar.cc/150?img=1',
    followersIds: ['user2', 'user3', 'user4', 'user5'],
    followingIds: ['user2', 'user4'],
    createdAt: DateTime(2023, 1, 15),
  ),
  User(
    id: 'user2',
    username: 'AlexStories',
    email: 'alex@inkspire.com',
    bio: 'Romance y drama 💕 | Publicando desde 2022',
    avatarUrl: 'https://i.pravatar.cc/150?img=12',
    followersIds: ['user1', 'user3', 'user5'],
    followingIds: ['user1', 'user3', 'user5'],
    createdAt: DateTime(2022, 8, 20),
  ),
  User(
    id: 'user3',
    username: 'MysticPen',
    email: 'mystic@inkspire.com',
    bio: 'Historias de misterio y suspenso 🔍 | Lector voraz',
    avatarUrl: 'https://i.pravatar.cc/150?img=33',
    followersIds: ['user1', 'user2', 'user4'],
    followingIds: ['user1', 'user2'],
    createdAt: DateTime(2023, 3, 10),
  ),
  User(
    id: 'user4',
    username: 'LunaAuthor',
    email: 'luna@inkspire.com',
    bio: 'Ciencia ficción y distopías 🚀 | Co-autora activa',
    avatarUrl: 'https://i.pravatar.cc/150?img=45',
    followersIds: ['user1', 'user5'],
    followingIds: ['user1', 'user2', 'user3', 'user5'],
    createdAt: DateTime(2023, 5, 5),
  ),
  User(
    id: 'user5',
    username: 'DanWriter',
    email: 'dan@inkspire.com',
    bio: 'Aventuras y acción ⚔️ | 15 obras publicadas',
    avatarUrl: 'https://i.pravatar.cc/150?img=68',
    followersIds: ['user2', 'user3', 'user4'],
    followingIds: ['user1', 'user3'],
    createdAt: DateTime(2022, 11, 30),
  ),
];

// ============================================================================
// OBRAS MOCK
// ============================================================================

final List<Work> mockWorks = [
  Work(
    id: 'work1',
    title: 'El Reino de las Sombras',
    authorId: 'user1',
    authorName: 'SaraWrites',
    summary: 'En un mundo donde la magia ha sido olvidada, una joven descubre que es la última heredera de un antiguo linaje de hechiceros.',
    coverUrl: 'https://picsum.photos/seed/fantasy1/400/600',
    tags: ['magia', 'aventura', 'guardianes'],
    genres: ['Fantasía', 'Aventura'],
    rating: 'Teen',
    status: 'In Progress',
    chaptersCount: 24,
    likesCount: 1847,
    commentsCount: 234,
    viewsCount: 12456,
    publishedAt: DateTime(2023, 6, 15),
    lastUpdated: DateTime(2024, 12, 20),
    chapters: [
      Chapter(
        id: 'ch1',
        workId: 'work1',
        number: 1,
        title: 'El Despertar',
        content: '''La niebla matutina cubría el pequeño pueblo de Eldoria cuando Elena despertó con un sobresalto.

"Elena, baja ya!" gritó su madre desde la cocina.

Pero esa mañana era diferente. Al vestirse, Elena notó una marca extraña en su muñeca, brillante como plata fundida.

Algo había cambiado. Y el mundo nunca volvería a ser el mismo.''',
        wordsCount: 2340,
        publishedAt: DateTime(2023, 6, 15),
      ),
      Chapter(
        id: 'ch2',
        workId: 'work1',
        number: 2,
        title: 'La Profecía Olvidada',
        content: '''El mercado estaba lleno como siempre, pero Elena no podía concentrarse.

"Mi nombre es Aldrich", dijo el anciano. "Y tú, Elena de Eldoria, eres mucho más de lo que crees ser."

"Bienvenida a tu verdadero destino, Guardiana."''',
        wordsCount: 2156,
        publishedAt: DateTime(2023, 6, 22),
      ),
    ],
  ),
  Work(
    id: 'work2',
    title: 'Amor en Tiempos Modernos',
    authorId: 'user2',
    authorName: 'AlexStories',
    summary: 'Emma es una arquitecta exitosa que no cree en el amor verdadero. Todo cambia cuando conoce a Daniel.',
    coverUrl: 'https://picsum.photos/seed/romance1/400/600',
    tags: ['romance', 'drama', 'contemporáneo'],
    genres: ['Romance', 'Drama'],
    rating: 'Teen',
    status: 'Complete',
    chaptersCount: 32,
    likesCount: 2341,
    commentsCount: 567,
    viewsCount: 18923,
    publishedAt: DateTime(2023, 2, 10),
    lastUpdated: DateTime(2023, 11, 5),
    chapters: [],
  ),
  Work(
    id: 'work3',
    title: 'El Caso del Museo Silencioso',
    authorId: 'user3',
    authorName: 'MysticPen',
    summary: 'La detective Victoria Cross enfrenta su caso más extraño: obras de arte que desaparecen sin dejar rastro.',
    coverUrl: 'https://picsum.photos/seed/mystery1/400/600',
    tags: ['misterio', 'suspenso', 'detective'],
    genres: ['Misterio', 'Suspenso'],
    rating: 'Teen',
    status: 'In Progress',
    chaptersCount: 18,
    likesCount: 1523,
    commentsCount: 298,
    viewsCount: 9876,
    publishedAt: DateTime(2023, 8, 5),
    lastUpdated: DateTime(2024, 12, 18),
    chapters: [],
  ),
  Work(
    id: 'work4',
    title: 'Estación Exodus',
    authorId: 'user4',
    authorName: 'LunaAuthor',
    summary: 'Año 2347. La humanidad vive en estaciones espaciales. Una señal proveniente de la Tierra lo cambia todo.',
    coverUrl: 'https://picsum.photos/seed/scifi1/400/600',
    tags: ['ciencia ficción', 'espacio', 'distopía'],
    genres: ['Ciencia Ficción', 'Distopía'],
    rating: 'Mature',
    status: 'In Progress',
    chaptersCount: 15,
    likesCount: 1876,
    commentsCount: 412,
    viewsCount: 11234,
    publishedAt: DateTime(2023, 9, 12),
    lastUpdated: DateTime(2024, 12, 22),
    chapters: [],
  ),
  Work(
    id: 'work5',
    title: 'La Última Misión',
    authorId: 'user5',
    authorName: 'DanWriter',
    summary: 'Un mercenario retirado es llamado para una última misión imposible.',
    coverUrl: 'https://picsum.photos/seed/action1/400/600',
    tags: ['acción', 'thriller', 'militar'],
    genres: ['Acción', 'Thriller'],
    rating: 'Mature',
    status: 'Complete',
    chaptersCount: 28,
    likesCount: 2103,
    commentsCount: 389,
    viewsCount: 15678,
    publishedAt: DateTime(2022, 12, 1),
    lastUpdated: DateTime(2023, 7, 20),
    chapters: [],
  ),
  Work(
    id: 'work6',
    title: 'Recuerdos de Verano',
    authorId: 'user2',
    authorName: 'AlexStories',
    summary: 'Tres amigas. Un último verano antes de la universidad.',
    coverUrl: 'https://picsum.photos/seed/summer1/400/600',
    tags: ['amistad', 'verano', 'coming-of-age'],
    genres: ['Drama', 'Romance'],
    rating: 'Teen',
    status: 'Complete',
    chaptersCount: 12,
    likesCount: 987,
    commentsCount: 156,
    viewsCount: 6543,
    publishedAt: DateTime(2023, 7, 1),
    lastUpdated: DateTime(2023, 9, 15),
    chapters: [],
  ),
  Work(
    id: 'work7',
    title: 'El Grimorio Perdido',
    authorId: 'user1',
    authorName: 'SaraWrites',
    summary: 'Un libro de hechizos ancestral ha sido robado.',
    coverUrl: 'https://picsum.photos/seed/magic1/400/600',
    tags: ['magia', 'brujas', 'misterio'],
    genres: ['Fantasía', 'Misterio'],
    rating: 'Teen',
    status: 'In Progress',
    chaptersCount: 9,
    likesCount: 1234,
    commentsCount: 234,
    viewsCount: 7890,
    publishedAt: DateTime(2024, 10, 10),
    lastUpdated: DateTime(2024, 12, 15),
    chapters: [],
  ),
  Work(
    id: 'work8',
    title: 'Código Rojo',
    authorId: 'user4',
    authorName: 'LunaAuthor',
    summary: 'Una hacker descubre una conspiración global.',
    coverUrl: 'https://picsum.photos/seed/hacker1/400/600',
    tags: ['cyberpunk', 'thriller', 'tecnología'],
    genres: ['Thriller', 'Ciencia Ficción'],
    rating: 'Mature',
    status: 'In Progress',
    chaptersCount: 11,
    likesCount: 1567,
    commentsCount: 289,
    viewsCount: 8765,
    publishedAt: DateTime(2024, 8, 20),
    lastUpdated: DateTime(2024, 12, 19),
    chapters: [],
  ),
  Work(
    id: 'work9',
    title: 'Susurros en la Niebla',
    authorId: 'user3',
    authorName: 'MysticPen',
    summary: 'En un pueblo donde desaparecen personas cada diez años, un periodista busca la verdad.',
    coverUrl: 'https://picsum.photos/seed/horror1/400/600',
    tags: ['horror', 'sobrenatural', 'pueblo'],
    genres: ['Horror', 'Misterio'],
    rating: 'Mature',
    status: 'In Progress',
    chaptersCount: 14,
    likesCount: 1678,
    commentsCount: 345,
    viewsCount: 9234,
    publishedAt: DateTime(2024, 6, 5),
    lastUpdated: DateTime(2024, 12, 21),
    chapters: [],
  ),
  Work(
    id: 'work10',
    title: 'Entre Dos Mundos',
    authorId: 'user5',
    authorName: 'DanWriter',
    summary: 'Un joven descubre que puede viajar entre dimensiones paralelas.',
    coverUrl: 'https://picsum.photos/seed/dimension1/400/600',
    tags: ['fantasía', 'dimensiones', 'aventura'],
    genres: ['Fantasía', 'Aventura'],
    rating: 'Teen',
    status: 'In Progress',
    chaptersCount: 16,
    likesCount: 1890,
    commentsCount: 421,
    viewsCount: 10456,
    publishedAt: DateTime(2024, 4, 15),
    lastUpdated: DateTime(2024, 12, 23),
    chapters: [],
  ),
];

// ============================================================================
// POSTS MOCK (Feed Social)
// ============================================================================

final List<Post> mockPosts = [
  Post(
    id: 'post1',
    authorId: 'user1',
    authorName: 'SaraWrites',
    authorAvatarUrl: 'https://i.pravatar.cc/150?img=1',
    content: '¡Acabo de publicar el capítulo 24 de "El Reino de las Sombras"! 🐉✨',
    imageUrl: 'https://picsum.photos/seed/post1/800/600',
    likedByIds: ['user2', 'user3', 'user4', 'user5'],
    comments: [
      Comment(
        id: 'comment1',
        authorId: 'user2',
        authorName: 'AlexStories',
        authorAvatarUrl: 'https://i.pravatar.cc/150?img=12',
        content: '¡Increíble capítulo! No puedo esperar al siguiente 🔥',
        createdAt: DateTime.now().subtract(const Duration(hours: 2)),
        likesCount: 12,
      ),
    ],
    createdAt: DateTime.now().subtract(const Duration(hours: 3)),
  ),
  Post(
    id: 'post2',
    authorId: 'user2',
    authorName: 'AlexStories',
    authorAvatarUrl: 'https://i.pravatar.cc/150?img=12',
    content: 'Día de café y escritura ☕📚',
    imageUrl: 'https://picsum.photos/seed/coffee1/800/600',
    likedByIds: ['user1', 'user4', 'user5'],
    comments: [],
    createdAt: DateTime.now().subtract(const Duration(hours: 5)),
  ),
  Post(
    id: 'post3',
    authorId: 'user3',
    authorName: 'MysticPen',
    authorAvatarUrl: 'https://i.pravatar.cc/150?img=33',
    content: '¿Quién creen que es el verdadero culpable en mi nueva historia? 🔍',
    imageUrl: null,
    likedByIds: ['user1', 'user2', 'user5'],
    comments: [],
    createdAt: DateTime.now().subtract(const Duration(hours: 8)),
  ),
  Post(
    id: 'post4',
    authorId: 'user4',
    authorName: 'LunaAuthor',
    authorAvatarUrl: 'https://i.pravatar.cc/150?img=45',
    content: 'Nuevo artwork de la Estación Exodus 🚀✨',
    imageUrl: 'https://picsum.photos/seed/space1/800/600',
    likedByIds: ['user1', 'user2', 'user3', 'user5'],
    comments: [],
    createdAt: DateTime.now().subtract(const Duration(hours: 12)),
  ),
  Post(
    id: 'post5',
    authorId: 'user5',
    authorName: 'DanWriter',
    authorAvatarUrl: 'https://i.pravatar.cc/150?img=68',
    content: '¡15 obras publicadas! 🎉 Gracias a todos por el apoyo ❤️',
    imageUrl: 'https://picsum.photos/seed/celebration1/800/600',
    likedByIds: ['user1', 'user2', 'user3', 'user4'],
    comments: [],
    createdAt: DateTime.now().subtract(const Duration(days: 1)),
  ),
];

// ============================================================================
// USUARIO ACTUAL (para simular sesión)
// ============================================================================

final User currentUser = mockUsers[0]; // SaraWrites

// ============================================================================
// FUNCIONES HELPER
// ============================================================================

// Obtener obra por ID
Work? getWorkById(String workId) {
  try {
    return mockWorks.firstWhere((work) => work.id == workId);
  } catch (e) {
    return null;
  }
}

// Obtener usuario por ID
User? getUserById(String userId) {
  try {
    return mockUsers.firstWhere((user) => user.id == userId);
  } catch (e) {
    return null;
  }
}

// Obtener obras de un autor
List<Work> getWorksByAuthor(String authorId) {
  return mockWorks.where((work) => work.authorId == authorId).toList();
}

// Obtener posts de un autor
List<Post> getPostsByAuthor(String authorId) {
  return mockPosts.where((post) => post.authorId == authorId).toList();
}