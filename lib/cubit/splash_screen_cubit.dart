import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';

part 'splash_screen_state.dart';

class SplashScreenCubit extends Cubit<SplashScreenState> {
  SplashScreenCubit() : super(SplashScreenInitial());

  Future<void> startSplash()async{
    emit(SplashLoading());
    await Future.delayed(const Duration(seconds: 3));
    emit(SplashNavigate());
  }
}
