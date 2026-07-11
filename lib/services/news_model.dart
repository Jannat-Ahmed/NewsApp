import 'package:hive/hive.dart';
import 'package:news_app/services/auth.dart';
@HiveType(typeId: 0)
class NewsModel extends HiveObject{
  @HiveField(0)String newsTitle;
  @HiveField(1)String newsContent;
  @HiveField(2)String newsImage;

  NewsModel({
    required this.newsTitle,
    required this.newsContent,
    required this.newsImage,
});

  final List<Map<String, dynamic>> data = await supabase
      .from('countries')
      .select();
  // final supa=Supabase.instance.client;
  //
  // getNews(){
  // return supa.from("News").select();
  // }
}