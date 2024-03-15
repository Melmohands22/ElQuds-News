
import 'package:dio/dio.dart';
import 'package:elqeds/Models/articalModel.dart';

class NewsService {
  final Dio dio;

  NewsService(this.dio);


  Future<List<ArticalModel>> getNews({required String category}) async {
    try {
      var response = await dio.get(
          'https://newsdata.io/api/1/news?apikey=pub_37864d5db63d452af31f9ef8e055bc56107e2&language=ar&category=$category');

      Map<String, dynamic> jsonData = response.data;

      List<dynamic> articles = jsonData['results'];

      List<ArticalModel> articlesList = [];

      for (var article in articles) {
        ArticalModel articleModel = ArticalModel(
          arImage: article['image_url'],
          title: article['title'],
          subtitle: article['description'],
        );
        articlesList.add(articleModel);
      }

      return articlesList;
    }  catch (e) {
      return [];
    }



  }

}

