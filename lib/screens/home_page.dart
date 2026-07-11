import 'package:flutter/material.dart';
import 'package:news_app/widgets/custom_news_card.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

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
            child: ListView.builder(
              shrinkWrap: true,
              //physics: NeverScrollableScrollPhysics(),
              scrollDirection: Axis.vertical,
              itemBuilder:  (context, index) {
                return CustomNewsCard();
              },
              itemCount: 30,
            ),
          ),
        ],
      ),
    );
  }
}
