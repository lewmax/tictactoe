import 'package:chat_app/domain/entities/user/user.dart';
import 'package:equatable/equatable.dart';

class LeaderboardUser extends Equatable {
  final UserId id;
  final String name;
  final String? imageUrl;
  final int wins;
  final int losses;
  final int draws;
  final double winRate;

  const LeaderboardUser({
    required this.id,
    required this.name,
    required this.imageUrl,
    required this.wins,
    required this.losses,
    required this.draws,
    required this.winRate,
  });

  @override
  List<Object?> get props => [id, name, imageUrl, wins, losses, draws, winRate];
}
