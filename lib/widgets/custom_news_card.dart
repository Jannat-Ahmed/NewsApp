import 'package:flutter/material.dart';

class CustomNewsCard extends StatelessWidget {
  const CustomNewsCard({super.key,
  this.onTap});
  //final NewsModel news;

  final void Function()? onTap;

  @override
  Widget build(BuildContext context ) {
    return ListTile(
      onTap:onTap,
      leading: Container(
        height: 90,
        width: 90,

        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(3),
          image: DecorationImage(image: NetworkImage("https://img.magnific.com/free-vector/news-grunge-text_460848-9369.jpg?semt=ais_hybrid&w=740&q=80"),fit:BoxFit.cover )
        ),

      ),
      title:Text(" New CNN NEWs",
      style: TextStyle(
        fontSize: 20,
        fontWeight: FontWeight.w600,
      ),
      ),
      subtitle: Text(
        "Source of news",
        style: TextStyle(
          fontSize: 15,
        ),
      ),
    );
  }
}

class NewsModel {
}
