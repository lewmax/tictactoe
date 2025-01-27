sealed class NetworkResponse<Data> {
  const NetworkResponse();

  factory NetworkResponse.success(Data success) = SuccessNetworkResponse;
  factory NetworkResponse.failure(String failure) = FailureNetworkResponse;

  Data? get success;
  Data get successOrThrow;
  String? get failure;

  T map<T>({required T Function(Data success) success, required T Function(String failure) failure}) {
    return switch (this) {
      final SuccessNetworkResponse<Data> res => success(res.successOrThrow),
      final FailureNetworkResponse<Data> res => failure(res.failure),
    };
  }
}

class SuccessNetworkResponse<Data> extends NetworkResponse<Data> {
  const SuccessNetworkResponse(this.success);

  @override
  String? get failure => null;

  @override
  final Data success;

  @override
  Data get successOrThrow => success;
}

class FailureNetworkResponse<Data> extends NetworkResponse<Data> {
  const FailureNetworkResponse(this.failure);

  @override
  final String failure;

  @override
  Data? get success => null;

  @override
  Data get successOrThrow => throw failure;
}
