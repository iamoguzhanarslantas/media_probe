import 'package:media_probe/src/config/config.dart' show AppConfig;

class APIEndPoints {
  APIEndPoints._();

  static const String kBaseUrl = 'https://api.nytimes.com';
  static const String kApiPath = '/svc/mostpopular/v2/viewed';
  static const String kApiKeyPath = '?api-key=${AppConfig.apiKey}';
  static String kPeriodPath =
      '$kApiPath/${AppConfig.articleFetchPeriodsEnum.value}.json$kApiKeyPath';
}
