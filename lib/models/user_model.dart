import 'dart:convert';

class UserModel {
  String uId = "";
  String name = "";
  String lastName = "";
  String email = "";
  String photoURL = "";

  UserModel({
    required this.uId,
    required this.name,
    required this.email,
    required this.photoURL,
  });

  factory UserModel.fromMap(Map<String, dynamic> map) {
    return UserModel(
      uId: map['uId'],
      name: map['name'],
      email: map['email'],
      photoURL: map['photoURL'],
    );
  }

  factory UserModel.fromJson(String json) =>
      UserModel.fromMap(jsonDecode(json));

  Map<String, dynamic> toMap() => {
        'uId': uId,
        "name": name,
        "email": email,
        "photoURL": photoURL,
      };

  String toJson() => jsonEncode(toMap());
}
