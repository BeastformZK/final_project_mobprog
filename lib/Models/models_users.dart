class User {
  int? id;
  String? name;
  String? image;
  String? email;
  String? details;
  String? token;

  User({this.id, this.name, this.image, this.email, this.details, this.token});

  // function to convert json data to user model
  factory User.fromJson(Map<String, dynamic> json) {
    return User(
        id: json['user']['id'],
        name: json['user']['name'],
        image: json['user']['image'],
        email: json['user']['email'],
        details: json['user']['details'],
        token: json['token']);
  }
}
