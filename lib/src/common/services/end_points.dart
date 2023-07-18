class APIEndPoints {
  APIEndPoints._();

  static const String kBaseUrl = 'https://api.nytimes.com';
  static const String kApiPath = '/svc/mostpopular/v2/viewed';
  static const String kApiKeyPath = '?api-key=3KbWzH5vDL9BtBzEGnZP3ch5WOBPUkfi';
  static const String kOneDayPeriodPath = '$kApiPath/1.json$kApiKeyPath';
  static const String kSevenDayPeriodPath = '$kApiPath/7.json$kApiKeyPath';
  static const String kThirtyDayPeriodPath = '$kApiPath/30.json$kApiKeyPath';
}
