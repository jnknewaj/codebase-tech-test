class NetworkException implements Exception {}

class TimeoutException implements Exception {}

class ServerException implements Exception {
  final String message;
  ServerException(this.message);
}

class ParsingException implements Exception {}

class UnknownException implements Exception {
  final String message;
  UnknownException(this.message);
}
