import 'package:flutter/material.dart';

class NewsDetails extends StatelessWidget {
  const NewsDetails({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBodyBehindAppBar: true,
      appBar: AppBar(
        elevation:0 ,
        backgroundColor: Color(0xFF08113B),
        leading: IconButton(
            onPressed: (){
              // Navigator.pop(context);
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
        child: Padding(
          padding: const EdgeInsets.only(top: 100),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
               Image(image:
               NetworkImage("https://img.magnific.com/free-vector/news-grunge-text_460848-9369.jpg?semt=ais_hybrid&w=740&q=80",


        ),
                 width: double.infinity,
                 fit: BoxFit.cover,
                 height: 400,
          ),
              Padding(
                padding: const EdgeInsets.all(16.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text("Title",
                      style:TextStyle(
                        fontWeight: FontWeight.w700,
                        fontSize: 30,
                      ) ,),
                    Text("News  Title Title Title TitleTitle TitleTitleTitleTitleTitleTitle TitleTitleTitleTitle TitleTitle TitleTitleTitleTitleTitle TitleTitleTitleTitleTitleTitleTitleTitleTitle TitleTitle Title Title",
                    style: TextStyle(fontSize:20,fontWeight: FontWeight.w500 ),)
                  ],
                ),
              ),

            ],
          ),
        ),
      ),
    );
  }
}
