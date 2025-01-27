// Helper class to track user statistics
class UserStats {
  final String name;
  final String? imageUrl;
  int wins = 0;
  int losses = 0;
  int draws = 0;

  UserStats({required this.name, required this.imageUrl});
}
