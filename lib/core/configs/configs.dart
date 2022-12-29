/// App level configuration variables
class Configs {
  /// Base API URL of The petfinder API
  ///
  /// See: https://www.petfinder.com/developers/v2/docs/
  static const String apiBaseUrl = 'https://api.petfinder.com/v2';


  // TODO: use keys from Environment
  // currently added directly

  static const String clientSecret =
      'AMah3iiEhwsSiiX678777fc6ukHlo9XvrvOMMMbK' ??
          String.fromEnvironment('CLIENT_SECRET');

  static const String clientId =
      'DViG8mxNN7lwkRVzxMI3x5EoTumHC9VOEl0RSbBHLAqY1tIwHa' ??
          String.fromEnvironment('CLIENT_ID');
}
