

// class Article {
//   final String title;
//   final String imageUrl;
//   final String date;
//   final String? content;
//   const Article({
//     required this.title,
//     required this.date,
//     required this.imageUrl,
//     this.content,
//   });

//   factory Article.fromJson(Map<String, dynamic> json) {
//     Article article = Article(
//         title: json['author'],
//         date: json["publishedAt"],
//         imageUrl: json["image"],
//         content: json["content"]);
//     return article;
//   }
// }

// class ArticleResponse {
//   int id;
//   Article article;
//   ArticleResponse({
//     required this.id,
//     required this.article,
//   });
//   factory ArticleResponse.fromJson(Map<String, dynamic> json) {
//     ArticleResponse article = ArticleResponse(
//         id: json['id'], article: Article.fromJson(json["attributes"]));
//     return article;
//   }
// }

// class Response {
//   List<ArticleResponse> data = [];
  
//   Response();
//   factory Response.fromJson(Map<String, dynamic> json) {
//     Response response = Response();
//     for (var c in json["data"]) {
//       ArticleResponse articleResponse = ArticleResponse.fromJson(c);
//       response.data.add(articleResponse);
//     }
//     return response;
//   }
// }
class Article {
  final int? id;
  final String title;
  final String imageUrl;
  final String date;
  final String? content;
  final String routeName = '/articleDetails';

  const Article(
      {required this.title,
      required this.date,
      required this.imageUrl,
      this.content,
      this.id});

  factory Article.fromJson(Map<String, dynamic> json) {
    Article article = Article(
        id: json['id'],
        title: json['attributes']['author'],
        date: json['attributes']["publishedAt"],
        imageUrl: json['attributes']["image"],
        content: json['attributes']["content"]);
    return article;
  }
}
class ArticlesResponse {
  List<Article> articles;
  ArticlesResponse({required this.articles});

  factory ArticlesResponse.fromJson(Map<String, dynamic> json) {
    ArticlesResponse articlesResponse = ArticlesResponse(articles: []);
    for (var c in json['data']) {
      articlesResponse.articles.add(Article.fromJson(c));
    }
    return articlesResponse;
  }
}
