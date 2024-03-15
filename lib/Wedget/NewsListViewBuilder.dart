import 'package:elqeds/Models/articalModel.dart';
import 'package:elqeds/Service/News_Service.dart';
import 'package:elqeds/Wedget/News_ListView.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:dio/dio.dart';




class  NewsListViewBulder extends StatefulWidget {
  const NewsListViewBulder({super.key, required this.category});

  final String category ;

  @override
  State<NewsListViewBulder> createState() => _NewsListViewBulderState();
}

class _NewsListViewBulderState extends State<NewsListViewBulder> {
  var Future ;
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    Future =NewsService(Dio()).getNews(category: widget.category);
  }
  @override
  Widget build(BuildContext context) {
    return FutureBuilder <List<ArticalModel>>(future:Future , builder: (context, Snapshot) {
      if (Snapshot.hasData) {
        return NewsListView(
          articles: Snapshot.data !,
        );
      } else if (Snapshot.hasError) {
        return const SliverFillRemaining(child: Center(child: Text(
          'oops there was an error! ', style: TextStyle(fontSize: 30, color: Colors.red),)));
      }
      else if (Snapshot ==null) { return const SliverFillRemaining(child: Center(child: CircularProgressIndicator()));}

      else {
        return const SliverFillRemaining(child: Center(child: CircularProgressIndicator()));
      }
    });
  }
}

