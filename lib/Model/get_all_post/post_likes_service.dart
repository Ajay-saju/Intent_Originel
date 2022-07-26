// To parse this JSON data, do
//
//     final postLIkes = postLIkesFromJson(jsonString);

import 'package:meta/meta.dart';
import 'dart:convert';

PostLIkes postLIkesFromJson(String str) => PostLIkes.fromJson(json.decode(str));

String postLIkesToJson(PostLIkes data) => json.encode(data.toJson());

class PostLIkes {
    PostLIkes({
         this.stringValue,
         this.valueType,
         this.kind,
         this.value,
         this.path,
         this.reason,
         this.name,
         this.message,
    });

    final String? stringValue;
    final String? valueType;
    final String? kind;
    final String? value;
    final String? path;
    final Reason? reason;
    final String? name;
    final String? message;

    factory PostLIkes.fromJson(Map<String, dynamic> json) => PostLIkes(
        stringValue: json["stringValue"],
        valueType: json["valueType"],
        kind: json["kind"],
        value: json["value"],
        path: json["path"],
        reason: Reason.fromJson(json["reason"]),
        name: json["name"],
        message: json["message"],
    );

    Map<String, dynamic> toJson() => {
        "stringValue": stringValue,
        "valueType": valueType,
        "kind": kind,
        "value": value,
        "path": path,
        "reason": reason!.toJson(),
        "name": name,
        "message": message,
    };
}

class Reason {
    Reason();

    factory Reason.fromJson(Map<String, dynamic> json) => Reason(
    );

    Map<String, dynamic> toJson() => {
    };
}
