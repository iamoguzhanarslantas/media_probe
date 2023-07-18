import 'package:dio/dio.dart';
import 'package:media_probe/src/common/common.dart'
    show APIEndPoints, DioClient, logger;
import 'package:media_probe/src/home/home.dart' show ArticleModel;

class ArticleService {
  final dioClient = DioClient(
    baseUrl: APIEndPoints.kBaseUrl,
  );

  Future<List<ArticleModel>?> getArticles() async {
    try {
      final Response response = await dioClient.get(
        APIEndPoints.kSevenDayPeriodPath,
      );
      if (response.statusCode == 200) {
        final data = response.data as List<dynamic>;
        return data
            .map(
              (singlePost) => ArticleModel.fromJson(singlePost),
            )
            .toList();
      }
    } catch (e) {
      logger.e(e);
    }
    return null;
  }
}
