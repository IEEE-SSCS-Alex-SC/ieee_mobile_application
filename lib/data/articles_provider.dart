import 'package:flutter/material.dart';

import 'article.dart';

class ArticlesProvider with ChangeNotifier {
  final List<Article> _articles = const [
    Article(
        id: 0,
        title: "Smart Cars",
        content:
            "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupiArticlesProvidert non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.",
        imageUrl:
            'https://cdn.carbuzz.com/gallery-images/original/274000/400/274435.jpg',
        date: "12/12/2012"),
    Article(
        id: 1,
        title: "AI vs Covid-19",
        imageUrl:
            'https://sscsalex.org/static/0d35d923e6ed1f15aa24de4f36c4818a/f211f/5eb8b1b08f25030017183661.jpg',
        content:
            "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupiArticlesProvidert non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.",
        date: "12/12/2012"),
  ];

  List<Article> get articles {
    return _articles;
  }

  Article findArticleById(int id) {
    return _articles.firstWhere((element) => element.id == id);
  }
}
