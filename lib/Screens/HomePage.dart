
import 'package:elqeds/Models/articalModel.dart';
import 'package:elqeds/Screens/HomePage.dart';
import 'package:elqeds/Service/News_Service.dart';
import 'package:elqeds/Wedget/Category_Card.dart';
import 'package:elqeds/Wedget/NewsListViewBuilder.dart';
import 'package:elqeds/Wedget/NewsTill.dart';
import 'package:flutter/material.dart';

import '../Wedget/CategoriesListView.dart';
import 'package:elqeds/Wedget/News_ListView.dart';
import 'package:dio/dio.dart' show Dio;



class Homepage extends StatelessWidget {
  const Homepage({super.key});

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      appBar: AppBar(
        centerTitle: true,
        elevation: 0,
        backgroundColor: Colors.transparent,
        title:const Row(
          mainAxisSize: MainAxisSize.min,
          children: [
            Text('El-Quds'),
            Text('News', style: TextStyle(color: Colors.orange),),
          ],
        ) ,
      ),
      body: const Padding(
        padding: EdgeInsets.symmetric(horizontal: 16),
        child: CustomScrollView(
          slivers: [
            SliverToBoxAdapter(child: CategoriesListView()),
             SliverToBoxAdapter(
               child: SizedBox(
                 height: 20,
               ),
             ),
               NewsListViewBulder(category: 'top',),



          ],
        ),
      )
    );
  }
}




