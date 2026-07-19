import 'package:supabase_flutter/supabase_flutter.dart';
import '../models/news_model.dart';

class SupabaseService{
  final supabase=Supabase.instance.client;


  Future<List<NewsModel>> getNews() async {
    final response = await Supabase.instance.client
        .from('News')
        .select();
    return (response as List)
        .map((e) => NewsModel.fromJson(e))
        .toList();
  }



}