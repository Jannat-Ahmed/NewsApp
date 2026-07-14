import 'package:flutter/material.dart';
import 'package:news_app/services/news_model.dart';
import 'package:supabase_flutter/supabase_flutter.dart';

class CustomNewsCard extends StatelessWidget {
  final NewsModel news;
   CustomNewsCard({super.key,
  this.onTap, required this.news});
  //final NewsModel news;

  final void Function()? onTap;
  final imageUrl = Supabase.instance.client.storage
      .from('News')
      .getPublicUrl('Images');

  @override
  Widget build(BuildContext context ) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 20),
      child: ListTile(
        onTap:onTap,
        leading: Container(
          height: 80,
          width: 80,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(3),
            image: DecorationImage(image: NetworkImage(news.imageUrl),fit:BoxFit.cover )
          ),

        ),
        title:Text(news.title,
        style: TextStyle(
          fontSize: 20,
          fontWeight: FontWeight.w600,
        ),
        ),
        subtitle: Text(
          news.content,
          style: TextStyle(
            fontSize: 15,
          ),
        ),
      ),
    );
  }
}


