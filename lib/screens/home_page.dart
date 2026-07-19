import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:news_app/screens/news_details.dart';
import 'package:news_app/widgets/custom_news_card.dart' hide NewsModel;
import '../cubit/news_cubit.dart';
class HomePage extends StatefulWidget {
   HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}


class _HomePageState extends State<HomePage> {

  @override
  void initState() {
    super.initState();
    context.read<NewsCubit>().getNews();
  }

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
            child: BlocBuilder<NewsCubit,NewsState>(
                builder: (context,state){
                  if(state is NewsLoading){
                    return const Center(
                      child: CircularProgressIndicator(),
                    );
                  }
                  if(state is NewsSuccess){
                    return RefreshIndicator(
                      onRefresh: ()async{
                        await context.read<NewsCubit>().getNews();
                      },
                      child: ListView.builder(
                        itemCount: state.news.length,
                          physics: AlwaysScrollableScrollPhysics(),
                          itemBuilder:(context,index){
                            return CustomNewsCard(
                              news: state.news[index],
                              onTap: (){
                                Navigator.push(
                                    context,
                                    MaterialPageRoute(builder: (_)=>NewsDetails(news: state.news[index])));
                              },
                            );
                          } ),
                    );
                  }
                  return SizedBox();
                },
            ),
          ),
        ],
      ),
    );
  }
}
