import 'package:article_pagination_codelab/core/utils/date_time_utils.dart';
import 'package:flutter/material.dart';

const dateFormat = "dd MMM yyyy";
final firstArticleCreatedTime = DateTime.now();

class Article {
  Article({
    this.id,
    this.title,
    this.description,
    this.dateCreated,
  });

  int? id;
  String? title;
  String? description;
  DateTime? dateCreated;

  String get dateCreatedText => DateTimeUtils.getFormattedDate(
        dateCreated.toString(),
        format: dateFormat,
      );
}
