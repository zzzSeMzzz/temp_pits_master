class ApiException implements Exception {
  final _message;
  final _prefix;
  ApiException([this._message, this._prefix]);

  @override
  String toString() {
    return _message;
  }
}

class FetchDataException extends ApiException {
  FetchDataException([String? message])
      : super(message, 'Error During Communication');
}

class BadRequestException extends ApiException {
  BadRequestException([String? message]) : super(message, 'Invalid request');
}

class UnauthorizedException extends ApiException {
  UnauthorizedException([String? message])
      : super(message, 'Unauthorized request');
}

class InvalidInputException extends ApiException {
  InvalidInputException([String? message]) : super(message, 'Invalid Input');
}