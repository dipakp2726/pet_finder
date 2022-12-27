/// App level configuration variables
class Configs {
  /// Base API URL of The petfinder API
  ///
  /// See: https://www.petfinder.com/developers/v2/docs/
  static const String apiBaseUrl = 'https://api.petfinder.com/v2';

  /// API Key registered with The petfinder API
  ///
  /// See: https://www.petfinder.com/developers/v2/docs/
  static const String petAPIKey = String.fromEnvironment('PET_API_KEY');
}
