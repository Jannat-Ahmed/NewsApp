import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';
import 'package:news_app/models/news_model.dart';
import 'package:news_app/services/SupabaseService.dart';

part 'news_state.dart';

class NewsCubit extends Cubit<NewsState> {
  NewsCubit() : super(NewsInitial());

  final SupabaseService service=SupabaseService();

  Future<void>getNews()async{
    emit(NewsLoading());

    try{
      final news=await service.getNews();

      emit(NewsSuccess(news));
    }catch(e){
      emit(NewsError(e.toString()));
    }
  }
}
