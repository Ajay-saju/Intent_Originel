class AddComment {
  String? message;
  List<Posts>? posts;

  AddComment({this.message, this.posts});

  AddComment.fromJson(Map<String, dynamic> json) {
    message = json['message'];
    if (json['posts'] != null) {
      posts = <Posts>[];
      json['posts'].forEach((v) {
        posts!.add( Posts.fromJson(v));
      });
    }
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['message'] = message;
    if (posts != null) {
      data['posts'] = posts!.map((v) => v.toJson()).toList();
    }
    return data;
  }
}

class Posts {
  String? sId;
  String? description;
  String? postImg;
  CreatedBy? createdBy;
  String? createdAt;
  List<String>? likes;
  List<Comments>? comments;
  int? iV;

  Posts(
      {this.sId,
      this.description,
      this.postImg,
      this.createdBy,
      this.createdAt,
      this.likes,
      this.comments,
      this.iV});

  Posts.fromJson(Map<String, dynamic> json) {
    sId = json['_id'];
    description = json['description'];
    postImg = json['postImg'];
    createdBy = json['createdBy'] != null
        ? CreatedBy.fromJson(json['createdBy'])
        : null;
    createdAt = json['createdAt'];
    likes = json['likes'].cast<String>();
    if (json['comments'] != null) {
      comments = <Comments>[];
      json['comments'].forEach((v) {
        comments!.add(Comments.fromJson(v));
      });
    }
    iV = json['__v'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = Map<String, dynamic>();
    data['_id'] = sId;
    data['description'] = description;
    data['postImg'] = postImg;
    if (createdBy != null) {
      data['createdBy'] = createdBy!.toJson();
    }
    data['createdAt'] = createdAt;
    data['likes'] = likes;
    if (comments != null) {
      data['comments'] = comments!.map((v) => v.toJson()).toList();
    }
    data['__v'] = iV;
    return data;
  }
}

class CreatedBy {
  String? sId;
  String? name;
  String? about;
  bool? interviewer;
  String? profileImg;

  CreatedBy(
      {this.sId, this.name, this.about, this.interviewer, this.profileImg});

  CreatedBy.fromJson(Map<String, dynamic> json) {
    sId = json['_id'];
    name = json['name'];
    about = json['about'];
    interviewer = json['interviewer'];
    profileImg = json['profileImg'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = Map<String, dynamic>();
    data['_id'] = sId;
    data['name'] = name;
    data['about'] = about;
    data['interviewer'] = interviewer;
    data['profileImg'] = profileImg;
    return data;
  }
}

class Comments {
  CreatedBy? commentedBy;
  String? comment;
  String? sId;

  Comments({this.commentedBy, this.comment, this.sId});

  Comments.fromJson(Map<String, dynamic> json) {
    commentedBy = json['commentedBy'] != null
        ? CreatedBy.fromJson(json['commentedBy'])
        : null;
    comment = json['comment'];
    sId = json['_id'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = Map<String, dynamic>();
    if (commentedBy != null) {
      data['commentedBy'] = commentedBy!.toJson();
    }
    data['comment'] = comment;
    data['_id'] = sId;
    return data;
  }
}
