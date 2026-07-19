class NewsModel {
  final String content;
  final String title;
  final String imageUrl;

  NewsModel({
    required this.content,
    required this.title,
    required this.imageUrl,
  });

  factory NewsModel.fromJson(Map<String, dynamic> json) {
    return NewsModel(
      title: json['Title']??"",
      content: json['Content']??"",
      imageUrl: json['Image']??"",


    );
  }

  Map<String, dynamic> toJson() {
    return {
      'Content': content,
      'Title': title,
      'Image': imageUrl,
    };
  }
}