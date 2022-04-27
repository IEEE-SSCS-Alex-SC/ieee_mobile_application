import 'package:flutter/material.dart';

class ArticleContainer extends StatelessWidget {
  const ArticleContainer(
      {Key? key,
      required this.date,
      this.imageUrl,
      this.title,
      required this.nextScreen})
      : super(key: key);
  final String? title;
  final String date;
  final String? imageUrl;
  final Widget nextScreen;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(20.0),
      width: double.infinity,
      height: MediaQuery.of(context).size.height / 5,
      child: Row(children: [
        Container(
          margin: const EdgeInsets.only(right: 30.0),
          child: ClipRRect(
            borderRadius: BorderRadius.circular(20),
            // ignore: prefer_const_constructors
            child: Image(image: AssetImage('assets/article_image.jpeg')),
          ),
        ),
        Container(
          margin: const EdgeInsets.only(top: 15),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                title!,
                style: const TextStyle(
                    color: Color(0xFFBA0C2F),
                    fontSize: 30.0,
                    fontWeight: FontWeight.bold),
              ),
              const SizedBox(
                height: 15.0,
              ),
              Text(
                date,
                //date,
                style: const TextStyle(color: Colors.white),
              )
            ],
          ),
        )
      ]),
    );
  }
}
