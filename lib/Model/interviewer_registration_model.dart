// To parse this JSON data, do
//
//     final interviewerRegistrationModel = interviewerRegistrationModelFromJson(jsonString);

import 'package:meta/meta.dart';
import 'dart:convert';

InterviewerRegistrationModel interviewerRegistrationModelFromJson(String str) => InterviewerRegistrationModel.fromJson(json.decode(str));

String interviewerRegistrationModelToJson(InterviewerRegistrationModel data) => json.encode(data.toJson());

class InterviewerRegistrationModel {
    InterviewerRegistrationModel({
        required this.message,
        required this.user,
    });

    String message;
    User user;

    factory InterviewerRegistrationModel.fromJson(Map<String, dynamic> json) => InterviewerRegistrationModel(
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
