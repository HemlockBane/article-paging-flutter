import 'package:article_pagination_codelab/app/articles/data/article.dart';
import 'package:article_pagination_codelab/app/articles/data/article_repository.dart';
import 'package:article_pagination_codelab/app/articles/ui/viewmodel/article_view_model.dart';
import 'package:flutter/material.dart';

class ArticlesScreen extends StatefulWidget {
  const ArticlesScreen({Key? key, required this.title}) : super(key: key);

  final String title;

  @override
  State<ArticlesScreen> createState() => _ArticlesScreenState();
}

class _ArticlesScreenState extends State<ArticlesScreen> {
  final viewModel = ArticleViewModel(repository: ArticleRepository());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: ArticleListView(
        articleStream: viewModel.items,
      ),
    );
  }
}

class ArticleListView extends StatelessWidget {
  const ArticleListView({
    Key? key,
    required this.articleStream,
  }) : super(key: key);

  final Stream<List<Article>> articleStream;

  @override
  Widget build(BuildContext context) {
    return StreamBuilder(
        stream: articleStream,
        builder: (context, AsyncSnapshot<List<Article>> snapshot) {
          final articles = snapshot.data ?? [];
          return ListView.builder(
            itemCount: articles.length,
            itemBuilder: (ctx, idx) {
              final article = articles[idx];
              return ListTile(
                title: Text(article.title ?? ""),
              );
            },
          );
        });
  }
}
