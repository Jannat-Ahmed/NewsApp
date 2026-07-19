part of 'news_cubit.dart';

@immutable
sealed class NewsState {}

final class NewsInitial extends NewsState {}
class NewsLoading extends NewsState{}
class NewsSuccess extends NewsState{
  final List<NewsModel> news;
  NewsSuccess(this.news);
}

class NewsError extends NewsState{
  final String message;
  NewsError(this.message);
}
