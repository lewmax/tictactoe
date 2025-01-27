import 'package:chat_app/domain/entities/game/game.dart';
import 'package:equatable/equatable.dart';

sealed class DeepLink extends Equatable {
  final String url;

  const DeepLink(this.url);

  factory DeepLink.fromUrl(String url) {
    try {
      return GameDeepLink.fromUrl(url);
    } catch (e) {
      return DeepLinkUndefined(url);
    }
  }
}

class GameDeepLink extends DeepLink {
  final GameId gameId;

  const GameDeepLink._(this.gameId, String url) : super(url);

  factory GameDeepLink.fromGameId(GameId gameIdVal, String baseUrl) =>
      GameDeepLink._(gameIdVal, '$baseUrl/${gameIdVal.rawValue}');

  factory GameDeepLink.fromUrl(String url) {
    final uri = Uri.parse(url);
    final id = uri.pathSegments.last;
    if (id.length < 10) throw Exception('Invalid game id');

    return GameDeepLink._(GameId(rawValue: id), url);
  }

  @override
  List<Object?> get props => [gameId, url];
}

class DeepLinkUndefined extends DeepLink {
  const DeepLinkUndefined(super.url);

  @override
  List<Object?> get props => [url];
}
