import 'package:dio/dio.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import 'package:media_probe/src/common/common.dart'
    show APIEndPoints, DioClient, logger;
import 'package:media_probe/src/home/home.dart'
    show ArticleModel, IArticleRepository;

class ArticleRepository extends IArticleRepository {
  ArticleRepository(this.ref);

  final ProviderRef ref;

  final dioClient = DioClient(
    baseUrl: APIEndPoints.kBaseUrl,
  );

  @override
  Future<List<ArticleModel>?> getArticles() async {
    try {
      final Response response = await dioClient.get(
        APIEndPoints.kPeriodPath,
      );
      if (response.statusCode == 200) {
        final data = response.data['results'] as List<dynamic>;
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
