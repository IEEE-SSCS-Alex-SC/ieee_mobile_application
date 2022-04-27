import '../data/article.dart';
import 'package:flutter/material.dart';

void main() => runApp(MaterialApp(home: ArticleDetails()));

// ignore: must_be_immutable
class ArticleDetails extends StatelessWidget {
/*
Data Reterived from the database related to the article page
1- Image URL
2- Title
3- List of paragraphs ->content of the article
*/

  Article article = const Article(
      title: "Smart Cars",
      content:
          "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.",
      imageUrl:
          'https://sscsalex.org/static/0d35d923e6ed1f15aa24de4f36c4818a/f211f/5eb8b1b08f25030017183661.jpg',
      date: "12/12/2012");

  ArticleDetails({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
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
                  const Opacity(
                    opacity: 0.8,
                    child: Image(
                      image: AssetImage('assets/article_image.png'),
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
                          article.title,
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
                  "${article.content}",
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
