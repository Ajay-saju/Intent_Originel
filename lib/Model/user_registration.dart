// To parse this JSON data, do
//
//     final userRegistration = userRegistrationFromJson(jsonString);

import 'dart:convert';

import 'package:flutter/cupertino.dart';

UserRegistration userRegistrationFromJson(String str) => UserRegistration.fromJson(json.decode(str));

String userRegistrationToJson(UserRegistration data) => json.encode(data.toJson());

class UserRegistration {
    UserRegistration({
       required this.message,
       required this.user,
    });

    String message;
    User user;

    factory UserRegistration.fromJson(Map<String, dynamic> json) => UserRegistration(
        message: json["message"],
        user: User.fromJson(json["user"]),
    );

    Map<String, dynamic> toJson() => {
        "message": message,
        "user": user.toJson(),
    };
}

class User {
    User({
       required this.name,
       required this.phone,
       required this.email,
       required this.password,
       required this.about,
       required this.interviewer,
       required this.experience,
       required this.connections,
       required this.block,
       required this.id,
       required this.v,
    });

    String name;
    int phone;
    String email;
    String password;
    String about;
    bool interviewer;
    int experience;
    List<dynamic> connections;
    bool block;
    String id;
    int v;

    factory User.fromJson(Map<String, dynamic> json) => User(
        name: json["name"],
        phone: json["phone"],
        email: json["email"],
        password: json["password"],
        about: json["about"],
        interviewer: json["interviewer"],
        experience: json["experience"],
        connections: List<dynamic>.from(json["connections"].map((x) => x)),
        block: json["block"],
        id: json["_id"],
        v: json["__v"],
    );

    Map<String, dynamic> toJson() => {
        "name": name,
        "phone": phone,
        "email": email,
        "password": password,
        "about": about,
        "interviewer": interviewer,
        "experience": experience,
        "connections": List<dynamic>.from(connections.map((x) => x)),
        "block": block,
        "_id": id,
        "__v": v,
    };
}
