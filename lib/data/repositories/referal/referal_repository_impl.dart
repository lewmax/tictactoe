import 'dart:async';

import 'package:chat_app/core/utils/logger.dart';
import 'package:chat_app/domain/entities/referal/deep_link.dart';
import 'package:chat_app/domain/repositories/referal/referal_repository.dart';
import 'package:flutter_branch_sdk/flutter_branch_sdk.dart';
import 'package:injectable/injectable.dart';
import 'package:uuid/uuid.dart';

@Singleton(as: ReferalRepo)
class ReferalRepoImpl extends ReferalRepo {
  ReferalRepoImpl();

  @override
  Stream<DeepLink?> get linkTappedStream => FlutterBranchSdk.listSession().map(
        (data) {
          if (data.containsKey('+clicked_branch_link') && data['+clicked_branch_link'] == true) {
            final link = data['~referring_link'] as String?;
            if (link == null) return null;

            final deepLink = DeepLink.fromUrl(link);

            return deepLink;
          }

          return null;
        },
      );

  @override
  Future<GameDeepLink?> createUrl() async {
    final canonicalIdentifier = const Uuid().v4();

    const imageUrl =
        'https://static.vecteezy.com/system/resources/previews/006/409/900/non_2x/tic-tac-toe-sketched-isolated-vintage-game-in-hand-drawn-style-vector.jpg';

    final buo = BranchUniversalObject(
      canonicalIdentifier: 'flutter/branch_$canonicalIdentifier',
      title: 'TicTacToe Invitation',
      contentDescription: "Play a game of TicTacToe with me!",
      imageUrl: imageUrl,
      // expirationDateInMilliSec: DateTime.now().add(1.days).millisecondsSinceEpoch,
    );

    final lp = BranchLinkProperties(feature: 'sharing');

    try {
      final res = await FlutterBranchSdk.getShortUrl(buo: buo, linkProperties: lp);
      final result = res.result;

      if (result is String) return GameDeepLink.fromUrl(result);
    } catch (e) {
      logDebug(e);
    }
    return null;
  }
}
