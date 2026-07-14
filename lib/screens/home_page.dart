import 'package:flutter/material.dart';
import 'package:news_app/screens/news_details.dart';
import 'package:news_app/widgets/custom_news_card.dart' hide NewsModel;
import 'package:supabase_flutter/supabase_flutter.dart';
import '../services/news_model.dart';
import 'package:news_app/services/auth.dart';
class HomePage extends StatelessWidget {
   HomePage({super.key});

  final response = Supabase.instance.client
      .from('News')
      .select();

  late final news = (response as List)
      .map((e) => NewsModel.fromJson(e)).toList();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Stack(
            clipBehavior: Clip.none,
            children: [
              Container(
                width: double.infinity,
                height: 120,
                color:Color(0xFF08113B),
                child:
                Padding(
                  padding: const EdgeInsets.only(top: 30,right: 25,left: 25),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Text("News",
                        style: TextStyle(fontSize: 30,color: Colors.white,fontWeight: FontWeight.bold),
                      ),
                      Icon(Icons.search,size: 30,color: Colors.white,),
                    ],
                  ),
                ),
              ),

            ],
          ),
          Expanded(
            child: FutureBuilder(
              future: AuthSupa().fetchUsers(),
              //physics: NeverScrollableScrollPhysics(),

               builder:(context, snapshot) {
                 if (snapshot.connectionState == ConnectionState.waiting) {
                   return const Center(child: CircularProgressIndicator());
                 }
                 if (snapshot.hasError) {
                   return Center(child: Text(snapshot.error.toString()));
                 }
                 if (!snapshot.hasData) {
                   return const Center(child: Text('No data'));
                 }
                 final news = snapshot.data!;

                 return ListView.builder(

                     itemCount: news.length,
                  itemBuilder: (context, index) {
                  return CustomNewsCard(
                    news: news[index],
                      onTap: (){
                      Navigator.of(context).push(
                        MaterialPageRoute(builder:
                        (context)=>NewsDetails(news: news[index]),
                        )
                      );
                      },
                  );
                     }

                 );
},
            ),
          ),
        ],
      ),
    );
  }
}
