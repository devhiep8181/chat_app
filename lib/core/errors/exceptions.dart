class ServerException implements Exception {
  final String? _message;
  ServerException(
    this._message,
  );

  get message => _message;

  @override
  String toString() => '$_message';
}

class CacheException implements Exception{}
class OfflineException implements Exception{}
