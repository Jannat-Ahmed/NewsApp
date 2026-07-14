import 'package:supabase_flutter/supabase_flutter.dart';
import 'news_model.dart';

class AuthSupa{
  final supabase=Supabase.instance.client;

/*
  Future<void> signUp( String email, String password,String userName) async {
    final response=await supabase.auth.signUp(
        password: password,
        email: email,
        data: {
          "userName":userName
        });
    if(response.user==null){
      throw Exception("Sign up failed");
    }
  }

  Future<void> logIn( String password, String email) async {
     await supabase.auth.signInWithPassword(password: password,email: email);
  }

  Future<void>logOut()async{
    await supabase.auth.signOut();
  }*/


  Future<List<NewsModel>> fetchUsers() async {
    final response = await Supabase.instance.client
        .from('News')
        .select();
    print(response);

    return (response as List)
        .map((e) => NewsModel.fromJson(e))
        .toList();
  }

  Future<void> test() async {
    try {
      final data = await Supabase.instance.client
          .from('News')
          .select();

      print(data);
    } catch (e) {
      print('ERROR: $e');
    }
  }


}