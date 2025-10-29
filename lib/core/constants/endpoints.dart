class Endpoints {
  static const String _baseUrl =
      'https://api.openweathermap.org/data/3.0/onecall/';

  static const String currentWf = '$_baseUrl/';
  static const String historicalDate = '$_baseUrl/timemachine';
  static const String daySummary = '$_baseUrl/day_summary';
  static const String weatherOverView = '$_baseUrl/overview';
}
