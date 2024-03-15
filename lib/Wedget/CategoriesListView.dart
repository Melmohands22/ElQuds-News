import 'package:elqeds/Models/Categort_Model.dart';
import 'package:flutter/cupertino.dart';

import 'Category_Card.dart';

class CategoriesListView extends StatelessWidget {
 const  CategoriesListView({
    super.key,
  });
 final List<CategoryModel>catogeries = const
 [

   CategoryModel(CategoryName: 'sports', image: 'assets/Sports.jpg'),

   CategoryModel(CategoryName: 'technology', image: 'assets/technology.jpeg'),

   CategoryModel(CategoryName: 'science', image: 'assets/science.avif'),

   CategoryModel(CategoryName: 'health', image: 'assets/health.avif'),

   CategoryModel(CategoryName: 'entertainment', image: 'assets/entertaiment.avif'),

   CategoryModel(CategoryName: 'world', image: 'assets/general.jpg'),

   CategoryModel(CategoryName: 'business', image: 'assets/business.jpg')


 ];
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 90,
      child: ListView.builder(
          scrollDirection: Axis.horizontal,
          itemCount: catogeries.length,
          itemBuilder:(context, index){
            return   CategoryCard(category : catogeries[index],
            );

          }
      ),
    );
  }
}
