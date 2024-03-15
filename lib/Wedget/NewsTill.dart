
import 'package:elqeds/Models/articalModel.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:cached_network_image/cached_network_image.dart';

class NewsTill extends StatelessWidget {
  const NewsTill({super.key, required this.articalModel});
final ArticalModel articalModel ;
  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        ClipRRect(
          borderRadius: BorderRadius.circular(6),
          child: CachedNetworkImage(
            imageUrl: articalModel.arImage!,
            placeholder: (context, url) =>const Center(child: CircularProgressIndicator()),
            errorWidget: (context, url, error) => const Icon(Icons.error),
            height: 200,
            width: double.infinity,
            fit: BoxFit.cover,
          ),
        ),
     const   SizedBox(
          height: 12,
        ), 
        Text(articalModel.title,
        maxLines: 2,
          overflow: TextOverflow.ellipsis,
          style:const TextStyle(
            color: Colors.black87,
            fontSize: 20,
            fontWeight: FontWeight.w500

          ),
        ),

       const SizedBox(
          height: 8,
        ),
         Text(articalModel.subtitle??'' ,
          style:const TextStyle(
           color: Colors.grey , fontSize: 14
    ),
          maxLines: 2,

    ) ],
    );
  }
}
