// To parse this JSON data, do
//
//     final loginResponseModel = loginResponseModelFromJson(jsonString);

import 'dart:convert';

LoginResponseModel loginResponseModelFromJson(String str) =>
    LoginResponseModel.fromJson(json.decode(str));

String loginResponseModelToJson(LoginResponseModel data) =>
    json.encode(data.toJson());

class LoginResponseModel {
  LoginResponseModel({
    required this.message,
    this.user,
    this.token,
  });

  String message;
  User? user;
  String? token;

  factory LoginResponseModel.fromJson(Map<String, dynamic> json) =>
      LoginResponseModel(
        message: json["message"],
        user: User.fromJson(json["user"]),
        token: json["token"],
      );

  Map<String, dynamic> toJson() => {
        "message": message,
        "user": user != null ? user!.toJson() : {},
        "token": token,
      };
}

class User {
  User({
    required this.id,
    required this.name,
    required this.phone,
    required this.email,
    required this.password,
    required this.about,
    required this.interviewer,
    required this.experience,
    required this.connections,
    required this.block,
    required this.v,
    required this.profileImg,
  });

  String? id;
  String? name;
  int? phone;
  String? email;
  String? password;
  String? about;
  bool? interviewer;
  int? experience;
  List<String>? connections;
  bool? block;
  int? v;
  String? profileImg;

  factory User.fromJson(Map<String, dynamic> json) => User(
        id: json["_id"],
        name: json["name"],
        phone: json["phone"],
        email: json["email"],
        password: json["password"],
        about: json["about"],
        interviewer: json["interviewer"],
        experience: json["experience"],
        connections: List<String>.from(json["connections"].map((x) => x)),
        block: json["block"],
        v: json["__v"],
        profileImg: json["profileImg"],
      );

  Map<String, dynamic> toJson() => {
        "_id": id,
        "name": name,
        "phone": phone,
        "email": email,
        "password": password,
        "about": about,
        "interviewer": interviewer,
        "experience": experience,
        "connections": List<dynamic>.from(
            connections != null ? connections!.map((x) => x) : []),
        "block": block,
        "__v": v,
        "profileImg": profileImg,
      };
}
