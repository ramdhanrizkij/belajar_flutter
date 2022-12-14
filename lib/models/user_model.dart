class UserModel {
  int? id;
  String? name;
  String? email;
  String? username;
  String? profile_img;
  String? token;

  UserModel({
    this.id,
    this.name,
    this.email,
    this.username,
    this.profile_img,
    this.token
  });

  UserModel.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    name = json['name'];
    email = json['email'];
    username = json['username'];
    profile_img = json['profile_img'];
    token = json['access_token'];
  }

  Map<String, dynamic> toJson() {
    return {
      'id': id,
      'name': name,
      'email': email,
      'username': username,
      'profile_img': profile_img,
      'token': token
    };
  }
}
