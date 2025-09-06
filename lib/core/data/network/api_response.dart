

sealed class ApiResponse<T> {
  const ApiResponse();
}

final class Success<T> extends ApiResponse<T> {
  final T data;
  const Success(this.data);
}

final class Error<T> extends ApiResponse<T> {
  final String errorMessage;
  const Error(this.errorMessage);
}

final class Loading<T> extends ApiResponse<T> {
  const Loading();
}

final class Init<T> extends ApiResponse<T> {
  const Init();
}