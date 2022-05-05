// id": 12,
//       "attributes": {
//         "image": "https://t1.gstatic.com/images?q=tbn:ANd9GcQ_BAUrAe-b1xfenJnMF7T8IgPYDzFDwRLHgGly8LBsOBzgQtTi",
//         "author": "Amr Mahdy",
//         "content": "For those who are interested in technology and seek to be special in their future career, computer vision is a field of computer science that works on enabling computers to see, identify and process images in the same way that human vision does, and then provide the appropriate output.\nIt is like imparting human intelligence and instincts to a computer. Though in reality, it is a difficult task to enable computers to recognize images of different objects\nComputer vision and image recognition are integral parts of artificial intelligence (AI), which has quickly gone from niche to mainstream in the past few years.\nAnd now we can see its applications increase everywhere such as self-driving cars and Digital- Signage.\nSimply Computer vision is the science and technology of machines that see their future of Engineering and software developers.",
//         "createdAt": "2022-03-25T16:14:49.259Z",
//         "updatedAt": "2022-03-25T16:14:52.519Z",
//         "publishedAt": "2022-03-25T16:14:52.516Z"

class Article {
  final String title;
  final String imageUrl;
  final String date;
  final String? content;
  const Article({
    required this.title,
    required this.date,
    required this.imageUrl,
    this.content,
  });

  factory Article.fromJson(Map<String, dynamic> json) {
    Article article = Article(
        title: json['author'],
        date: json["publishedAt"],
        imageUrl: json["image"],
        content: json["content"]);
    return article;
  }
}

class ArticleResponse {
  int id;
  Article article;
  ArticleResponse({
    required this.id,
    required this.article,
  });
  factory ArticleResponse.fromJson(Map<String, dynamic> json) {
    ArticleResponse article = ArticleResponse(
        id: json['id'], article: Article.fromJson(json["attributes"]));
    return article;
  }
}

class Response {
  List<ArticleResponse> data = [];
  
  Response();
  factory Response.fromJson(Map<String, dynamic> json) {
    Response response = Response();
    for (var c in json["data"]) {
      ArticleResponse articleResponse = ArticleResponse.fromJson(c);
      response.data.add(articleResponse);
    }
    return response;
  }
}
