import 'dart:async';

import 'package:flutter/material.dart';
import 'package:news_app/screens/home_page.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  Timer? _timer;
  @override
  void initState(){
    super.initState();
    _timer=Timer(Duration(seconds: 3), (){
      Navigator.push(context, MaterialPageRoute(builder: (context)=> HomePage()));
    });
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body:
      Center(
        child:Container(
          height:100,
            width: 100,
            child: Image.asset("assets/images/loading.png")) ,
      ),

    );
  }
}
