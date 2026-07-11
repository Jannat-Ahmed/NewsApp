import 'package:news_app/screens/news_details.dart';
import 'package:news_app/screens/splash_screen.dart';
import 'package:supabase_flutter/supabase_flutter.dart';
import 'package:flutter/material.dart';
void main() async {
  WidgetsFlutterBinding.ensureInitialized();

  // await Supabase.initialize(
  //   url: "https://dgsvyhrzfwilohudesnx.supabase.co/rest/v1/",
  //   publishableKey: "sb_publishable_rQUKr6hwP7OstYI-qH7oMQ_x2_N3sNj",
  // );

  runApp(NewsApp());
}

class NewsApp extends StatelessWidget {
  const NewsApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
      home: NewsDetails(),
    );
  }
}
