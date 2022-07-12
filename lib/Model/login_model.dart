// To parse this JSON data, do
//
//     final userLogin = userLoginFromJson(jsonString);

import 'package:meta/meta.dart';
import 'dart:convert';

UserLogin userLoginFromJson(String str) => UserLogin.fromJson(json.decode(str));

String userLoginToJson(UserLogin data) => json.encode(data.toJson());

class UserLogin {
    UserLogin({
        required this.message,
        required this.user,
        required this.token,
    });

    String message;
    User user;
    String token;

    factory UserLogin.fromJson(Map<String, dynamic> json) => UserLogin(
        message: json["message"],
        user: User.fromJson(json["user"]),
        token: json["token"],
    );

    Map<String, dynamic> toJson() => {
        "message": message,
        "user": user.toJson(),
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
    });

    String id;
    String name;
    int phone;
    String email;
    String password;
    String about;
    bool interviewer;
    int experience;
    List<dynamic> connections;
    bool block;
    int v;

    factory User.fromJson(Map<String, dynamic> json) => User(
        id: json["_id"],
        name: json["name"],
        phone: json["phone"],
        email: json["email"],
        password: json["password"],
        about: json["about"],
        interviewer: json["interviewer"],
        experience: json["experience"],
        connections: List<dynamic>.from(json["connections"].map((x) => x)),
        block: json["block"],
        v: json["__v"],
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
        "connections": List<dynamic>.from(connections.map((x) => x)),
        "block": block,
        "__v": v,
    };
}
