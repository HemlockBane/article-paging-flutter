import 'package:article_pagination_codelab/app/articles/data/article.dart';

class ArticleRepository {
  Stream<List<Article>> get articleStream {
    final list = List.generate(500, (index) {
      return Article(
          id: index,
          title: "Article $index",
          description: "This describes article $index",
          dateCreated: firstArticleCreatedTime.subtract(Duration(days: index)));
    });
    return Stream.value(list).asBroadcastStream();
  }
}
