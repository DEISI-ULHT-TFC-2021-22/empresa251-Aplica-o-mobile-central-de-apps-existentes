class News {
  final int id;
  final String title;
  final String body;
  final String summary;
  final String imageURL;
  final DateTime createdAt;
  final String createdBy;

  const News({
    required this.id,
    required this.title,
    required this.body,
    required this.summary,
    required this.imageURL,
    required this.createdAt,
    required this.createdBy,
  });

  factory News.fromJson(Map<String, dynamic> json) {
    return News(
      id: json['id'],
      title: json['title'],
      body: json['body'],
      summary: json['summary'],
      imageURL: json['imageURL'],
      createdAt: DateTime.parse(json['createdAt'].toString()),
      createdBy: json['createdBy'],
    );
  }
}