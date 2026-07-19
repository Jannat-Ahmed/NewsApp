import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:news_app/cubit/splash_screen_cubit.dart';
import 'package:news_app/screens/home_page.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen>
    with SingleTickerProviderStateMixin {
  late AnimationController _controller;

  @override
  void initState() {
    super.initState();

    _controller = AnimationController(
      vsync: this,
      duration: const Duration(seconds: 3),
    )
      ..repeat();
    context.read<SplashScreenCubit>().startSplash();
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return BlocListener<SplashScreenCubit, SplashScreenState>(
      listener: (context, state) {
        if(state is SplashNavigate){
          Navigator.pushReplacement(context, 
            MaterialPageRoute(builder: (context)=>  HomePage())
          );
        }
      },
      child: Scaffold(
        body: Center(
          child: RotationTransition(
            turns: _controller,
            child: SizedBox(
              height: 100,
              width: 100,
              child: Image.asset("assets/images/loading.png"),
            ),
          ),
        ),
      ),
    );
  }
}