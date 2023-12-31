import 'package:flutter/material.dart';

import '../../models/news.dart';

// ignore: must_be_immutable
class NewsDetailScreen extends StatefulWidget {
  NewsDetailScreen({
    super.key,
    this.news,
  });
  News? news;

  @override
  State<NewsDetailScreen> createState() => _NewsDetailScreenState();
}

class _NewsDetailScreenState extends State<NewsDetailScreen> {
  // late News news;
  int likes = 0;

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;

    return Scaffold(
      appBar: AppBar(
        backgroundColor: const Color.fromARGB(255, 207, 182, 100),
        title: const Text(
          "Movies Detail",
        ),
      ),
      body: SingleChildScrollView(
        physics: const BouncingScrollPhysics(),
        child: Padding(
          padding: EdgeInsets.all(size.width * 0.02),
          child: Column(
            children: [
              AspectRatio(
                aspectRatio: 16 / 9,
                child: Image.network(
                  widget.news!.image!,
                  fit: BoxFit.cover,
                ),
              ),
              Padding(
                padding: EdgeInsets.symmetric(
                  horizontal: size.width * 0.02,
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const SizedBox(
                      height: 10,
                    ),
                    // ignore: prefer_const_constructors
                    Text(
                      widget.news!.title!,
                      // ignore: prefer_const_constructors
                      style: TextStyle(
                        fontSize: 28,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    Text(
                      widget.news!.content!,
                      textAlign: TextAlign.justify,
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    Row(
                      children: [
                        Column(
                          children: [
                            IconButton(
                                onPressed: () {
                                  setState(() {
                                    likes++;
                                  });
                                },
                                icon: const Icon(
                                  Icons.favorite,
                                  color: Color.fromARGB(255, 207, 182, 100),
                                ))
                          ],
                        ),
                        // const SizedBox(width: 10),
                        Text(' Liked by $likes readers')
                      ],
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
