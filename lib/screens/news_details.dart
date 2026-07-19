import 'package:flutter/material.dart';
import 'package:news_app/models/news_model.dart';

class NewsDetails extends StatelessWidget {
  final NewsModel news;
  const NewsDetails({super.key,required this.news});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation:0 ,
        backgroundColor: Color(0xFF08113B),
        leading: IconButton(
            onPressed: (){
               Navigator.pop(context);
            },
            icon: Icon(Icons.arrow_back,color: Colors.white,size: 30,)
        ),
        actions: [
          IconButton(
              onPressed: (){},
              icon: Icon(Icons.search,color: Colors.white,size: 30,)) ,
        ],
      ),
      body: SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
             Image(image:
             NetworkImage(news.imageUrl),
               width: double.infinity,
               height: 400,
               fit: BoxFit.fill,

             ),
            Padding(
              padding: const EdgeInsets.all(16.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(news.title,
                    style:TextStyle(
                      fontWeight: FontWeight.w700,
                      fontSize: 30,
                    ) ,),
                  SizedBox(height: 10),
                  Text(news.content,
                  style: TextStyle(fontSize:20,height: 2 ,fontWeight: FontWeight.normal ),)
                ],
              ),
            ),

          ],
        ),
      ),
    );
  }
}
