

sealed class ApiResponse<T> {}

final class Success<T> extends ApiResponse<T> {
  final T data;
  Success(this.data);
}

final class Error<T> extends ApiResponse<T> {
  final String errorMessage;
  Error(this.errorMessage);
}

final class Loading<T> extends ApiResponse<T> {}

final class Init<T> extends ApiResponse<T> {}