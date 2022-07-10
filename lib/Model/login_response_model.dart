class LoginResponseModel {
  String? message;
  User? user;
  String? token;

  LoginResponseModel({this.message, this.user, this.token});

  LoginResponseModel.fromJson(Map<String, dynamic> json) {
    message = json['message'];
    user = json['user'] != null ?  User.fromJson(json['user']) : null;
    token = json['token'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['message'] = message;
    if (user != null) {
      data['user'] = user!.toJson();
    }
    data['token'] = token;
    return data;
  }
}

class User {
  String? sId;
  String? name;
  int? phone;
  String? email;
  String? password;
  String? about;
  bool? interviewer;
  int? experience;
  List<String>? connections;
  bool? block;
  int? iV;
  String? profileImg;

  User(
      {this.sId,
      this.name,
      this.phone,
      this.email,
      this.password,
      this.about,
      this.interviewer,
      this.experience,
      this.connections,
      this.block,
      this.iV,
      this.profileImg});

  User.fromJson(Map<String, dynamic> json) {
    sId = json['_id'];
    name = json['name'];
    phone = json['phone'];
    email = json['email'];
    password = json['password'];
    about = json['about'];
    interviewer = json['interviewer'];
    experience = json['experience'];
    connections = json['connections'].cast<String>();
    block = json['block'];
    iV = json['__v'];
    profileImg = json['profileImg'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['_id'] =sId;
    data['name'] =name;
    data['phone'] =phone;
    data['email'] =email;
    data['password'] =password;
    data['about'] =about;
    data['interviewer'] =interviewer;
    data['experience'] =experience;
    data['connections'] =connections;
    data['block'] =block;
    data['__v'] =iV;
    data['profileImg'] =profileImg;
    return data;
  }
}
