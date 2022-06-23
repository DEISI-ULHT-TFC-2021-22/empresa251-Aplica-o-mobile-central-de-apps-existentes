class User {
  final int userid;
  final String name;
  final String avatarURL;


  const User({
    required this.userid,
    required this.name,
    required this.avatarURL,
  });

  factory User.fromJson(Map<String, dynamic> json) {
    return User(
      userid: json['userid'],
      name: json['name'],
      avatarURL: json['avatarURL'],
    );
  }

}