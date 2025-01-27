import 'package:chat_app/domain/entities/referal/deep_link.dart';

abstract class ReferalRepo {
  Stream<DeepLink?> get linkTappedStream;
  Future<GameDeepLink?> createUrl();
}
