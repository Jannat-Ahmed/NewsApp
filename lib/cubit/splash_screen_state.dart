part of 'splash_screen_cubit.dart';

@immutable
sealed class SplashScreenState {}

final class SplashScreenInitial extends SplashScreenState {}
class SplashLoading extends SplashScreenState {}
class SplashNavigate extends SplashScreenState {}