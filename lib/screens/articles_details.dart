import 'package:app/data/articles_provider.dart';
import 'package:provider/provider.dart';

import '../data/article.dart';
import 'package:flutter/material.dart';

class ArticleDetails extends StatelessWidget {
/*
Data Reterived from the database related to the article page
1- Image URL
2- Title
3- List of paragraphs ->content of the article
*/

  const ArticleDetails({Key? key}) : super(key: key);

  static const String routeName = '/articleDetails';

  @override
  Widget build(BuildContext context) {
    final int articleId = ModalRoute.of(context)!.settings.arguments as int;
    final Article articleData =
        Provider.of<ArticlesProvider>(context, listen: false)
            .findArticleById(articleId);
    return Scaffold(
      extendBodyBehindAppBar: true,
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
      ),
      backgroundColor: Colors.black,
      body: Scrollbar(
        thickness: 2,
        child: SingleChildScrollView(
          child: Column(
            children: [
              Stack(
                children: [
                  Opacity(
                    opacity: 0.8,
                    child: Image.network(
                      articleData.imageUrl,
                      height: 500,
                      fit: BoxFit.fill,
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        const SizedBox(height: 350),
                        Text(
                          articleData.title,
                          style: const TextStyle(
                            fontSize: 30,
                            color: Color(0xffBA0C2F),
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        Center(
                          child: IconButton(
                            onPressed: () {},
                            icon: const Icon(Icons.keyboard_arrow_down),
                            iconSize: 30,
                            color: const Color(0xffffffff),
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
              Container(
                padding: const EdgeInsets.fromLTRB(30, 15, 30, 15),
                child: Text(
                  //content.map((p) => p + "\n\n").toString(),
                  "${articleData.content}",
                  style: const TextStyle(
                      color: Colors.white,
                      fontSize: 30.0,
                      fontWeight: FontWeight.bold),
                  overflow: TextOverflow.clip,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
