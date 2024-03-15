import 'package:elqeds/Models/articalModel.dart';
import 'package:elqeds/Service/News_Service.dart';
import 'package:elqeds/Wedget/NewsTill.dart';
import 'package:elqeds/main.dart';
import 'package:dio/dio.dart' show Dio;
import 'package:flutter/material.dart';



class NewsListView extends StatelessWidget {
  final List<ArticalModel> articles;

  const NewsListView({super.key, required this.articles});

  @override
  Widget build(BuildContext context) {
    return SliverList(
      delegate: SliverChildBuilderDelegate(
        childCount: articles.length,
            (context, index) {
          return Padding(
            padding: const EdgeInsets.only(bottom: 22),
            child: NewsTill(
              articalModel: articles[index],
            ),
          );
        },
      ),
    );
  }
}
