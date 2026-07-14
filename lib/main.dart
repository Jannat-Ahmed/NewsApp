import 'package:news_app/screens/splash_screen.dart';
import 'package:supabase_flutter/supabase_flutter.dart';
import 'package:flutter/material.dart';
void main() async {
  WidgetsFlutterBinding.ensureInitialized();

   await Supabase.initialize(
     url: "https://dgsvyhrzfwilohudesnx.supabase.co",
     anonKey: "eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJpc3MiOiJzdXBhYmFzZSIsInJlZiI6ImRnc3Z5aHJ6ZndpbG9odWRlc254Iiwicm9sZSI6ImFub24iLCJpYXQiOjE3ODM3MTAwMzYsImV4cCI6MjA5OTI4NjAzNn0.pUI7QZejgsMkkvP7DM4pNnbkUr5cTwU098XpzVYR7Z8",
    // publishableKey: "sb_publishable_rQUKr6hwP7OstYI-qH7oMQ_x2_N3sNj",
   );

  runApp(NewsApp());
}

class NewsApp extends StatelessWidget {
  const NewsApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
      home: SplashScreen(),
    );
  }
}
