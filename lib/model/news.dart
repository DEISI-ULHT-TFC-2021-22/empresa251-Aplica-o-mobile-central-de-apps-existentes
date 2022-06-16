class News {
  final int id;
  final String title;
  final String body;
  final String summary;
  final String imageURL;

  const News({
    required this.id,
    required this.title,
    required this.body,
    required this.summary,
    required this.imageURL,
  });

  factory News.fromJson(Map<String, dynamic> json) {
    return News(
      id: json['id'],
      title: json['title'],
      body: json['body'],
      summary: json['summary'],
      imageURL: json['imageURL'],
    );
  }
}