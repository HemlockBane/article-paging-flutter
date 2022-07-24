import 'package:article_pagination_codelab/app/articles/data/article.dart';
import 'package:article_pagination_codelab/app/articles/data/article_repository.dart';

class ArticleViewModel {
  ArticleViewModel({required ArticleRepository repository})
      : _repository = repository;

  ArticleRepository _repository;

  Stream<List<Article>> get items => _repository.articleStream;
}
