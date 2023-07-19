import 'package:media_probe/src/home/home.dart' show ArticleModel;

abstract class IArticleRepository {
  Future<List<ArticleModel>?> getArticles();
}
