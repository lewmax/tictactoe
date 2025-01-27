import 'dart:async';

import 'package:chat_app/core/utils/logger.dart';
import 'package:chat_app/data/remote/network_response.dart';
import 'package:chat_app/domain/entities/user/user.dart';
import 'package:chat_app/domain/repositories/auth/auth_repo.dart';

abstract mixin class RepositoryValidationMixin {
  Future<NetworkResponse<T>> handleRequest<T>(Future<NetworkResponse<T>> Function() func) async {
    try {
      return func();
    } catch (e) {
      logDebug(e.toString());
      return NetworkResponse.failure(e.toString());
    }
  }

  Future<NetworkResponse<T>> validateAuthFuture<T>({
    required AuthRepo authRepo,
    bool handleError = false,
    required Future<NetworkResponse<T>> Function(User user) func,
  }) async {
    final user = authRepo.user;
    if (user == null) return NetworkResponse.failure('Unauthorized');

    if (handleError) return handleRequest<T>(() => func(user));

    return func(user);
  }
}
