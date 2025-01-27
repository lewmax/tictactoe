import 'package:json_annotation/json_annotation.dart';

enum GameStatus {
  @JsonValue('not_started')
  notStarted('not_started'),
  @JsonValue('teamate_joined')
  teamateJoined('teamate_joined'),
  @JsonValue('owner_turn')
  ownerTurn('owner_turn'),
  @JsonValue('teamate_turn')
  teamateTurn('teamate_turn'),
  @JsonValue('finished')
  finished('finished'),
  @JsonValue('user_terminated')
  userTerminated('user_terminated'),

  // Unknown status for unrecognized values
  @JsonValue('unknown')
  unknown('unknown');

  final String firebaseStatus;

  const GameStatus(this.firebaseStatus);

  // Factory method to handle unknown values
  factory GameStatus.fromJson(String value) {
    return GameStatus.values.firstWhere(
      (status) => status.firebaseStatus == value,
      orElse: () => GameStatus.unknown, // Fallback to unknown
    );
  }

  bool get isNotAvailableAnymore => this == finished || this == userTerminated || this == unknown;
  bool get isImcomplete => this == userTerminated || this != finished;
}
