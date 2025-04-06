class Constants {
  static const String appName = 'Flutter App';
  static const String apiBaseUrl = String.fromEnvironment('API_BASE_URL');
  static const String apiKey = String.fromEnvironment('API_KEY');
  
  // Shared Preferences Keys
  static const String authTokenKey = 'auth_token';
  static const String userIdKey = 'user_id';
  static const String isDarkModeKey = 'is_dark_mode';
  
  // Assets Paths
  static const String logoPath = 'assets/images/logo.png';
  
  // Error Messages
  static const String networkError = 'Network error occurred';
  static const String serverError = 'Server error occurred';
  static const String unknownError = 'Unknown error occurred';
}