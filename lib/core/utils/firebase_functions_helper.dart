import 'package:cloud_functions/cloud_functions.dart';
import 'package:chat_app/data/remote/network_response.dart';

abstract mixin class FirebaseFunctionsHelper {
  FirebaseFunctions get firebaseFunctions;

  Future<NetworkResponse<T>> runFirebaseFunction<T>(FirebaseFunction functionName, Map<String, dynamic>? map) async {
    try {
      final callable = firebaseFunctions.httpsCallable(functionName.name);
      final result = map == null ? await callable.call() : await callable.call(map);
      final res = result.data as Map;
      if (res['success'] == true) {
        final data = res['data'] as T;
        return NetworkResponse.success(data);
      } else {
        final errorMessage = res['error'] as String;
        return NetworkResponse.failure(errorMessage);
      }
    } catch (e) {
      return NetworkResponse.failure(e.toString());
    }
  }
}

enum FirebaseFunction {
  getCurrentServerDate,
  generateToken,
  generateTokenV2,
  sendNotificationToUser,
  sendNotificationToNotificationUsers,
  generateLetterSetManually,
}
