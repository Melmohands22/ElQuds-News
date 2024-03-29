
import 'package:elqeds/Models/Categort_Model.dart';
import 'package:elqeds/Screens/Catgory_View.dart';
import 'package:flutter/material.dart';


class CategoryCard extends StatelessWidget {
  const CategoryCard({super.key ,  required this.category});

  final CategoryModel category ;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: (){
        Navigator.of(context).push(MaterialPageRoute(builder: (context){
          return  CatgoryView(category: category.CategoryName,

          );
        }));
      },
      child: Padding(
        padding: const EdgeInsets.only(right: 8.0),
        child: Container(
      
          decoration:
          BoxDecoration(
            image: DecorationImage(
                fit: BoxFit.fill,
                image: AssetImage(category.image)),
            borderRadius: BorderRadius.circular(10),
            color: Colors.cyan,),
          width: 160,
          height: 90,
          child: Center(child:
          Text(category.CategoryName ,
            style:const TextStyle(color: Colors.white ,
                fontSize: 24,
                fontWeight: FontWeight.bold), )),
        ),
      ),
    );
  }
}
