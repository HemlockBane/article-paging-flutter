import 'package:article_pagination_codelab/app/articles/ui/view/articles_screen.dart';
import 'package:flutter/material.dart';

class ArticleApp extends StatelessWidget {
  const ArticleApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const ArticlesScreen(title: 'Flutter Demo Home Page'),
    );
  }
}