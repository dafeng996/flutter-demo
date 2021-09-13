class _NetworkConfig {
  final baseUrl = 'http://localhost:8002';
  final connectTimeout = 5000;
  final receiveTimeout = 3000;
}

class AppConfig {
  // ignore: non_constant_identifier_names
  static final Network = new _NetworkConfig();
}
